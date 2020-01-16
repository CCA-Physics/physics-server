import sys
import time
import pathlib
import shutil

from watchdog.observers import Observer
from watchdog.events import PatternMatchingEventHandler


TO_PATHS = {
    ('rccc', 'nbcc'): r'S:\DataExchange\ToNBCC',
    ('rccc', 'sash'): r'S:\DataExchange\ToSASH',
    ('sash', 'nbcc'): r'Y:\ToNBCC',
    ('sash', 'rccc'): r'Y:\ToRCCC',
    ('nbcc', 'rccc'): r'Z:\ToRCCC',
    ('nbcc', 'sash'): r'Z:\ToSASH'
}

FROM_PATHS = {
    ('nbcc', 'rccc'): r'S:\DataExchange\FromNBCC',
    ('sash', 'rccc'): r'S:\DataExchange\FromSASH',
    ('nbcc', 'sash'): r'Y:\FromNBCC',
    ('rccc', 'sash'): r'Y:\FromRCCC',
    ('rccc', 'nbcc'): r'Z:\FromRCCC',
    ('sash', 'nbcc'): r'Z:\FromSASH'
}

def create_event_handler(to_path, from_path):
    to_path = pathlib.Path(to_path)
    from_path = pathlib.Path(from_path)

    def on_created(event):
        event_path = pathlib.Path(event.src_path)
        relative_event_path = event_path.relative_to(to_path)
        destination = from_path.joinpath(relative_event_path)

        print(f"Moved from {event_path} to {destination}")
        
        while True:
            try:
                destination.parent.mkdir(exist_ok=True, parents=True)
                shutil.move(event_path, destination)
                break
            except PermissionError:
                time.sleep(1)

    def on_deleted(event):
        pass

    def on_modified(event):
        pass

    def on_moved(event):
        pass

    event_handler = PatternMatchingEventHandler(patterns="*", ignore_patterns="", ignore_directories=True, case_sensitive=True)
    event_handler.on_created = on_created
    event_handler.on_deleted = on_deleted
    event_handler.on_modified = on_modified
    event_handler.on_moved = on_moved

    return event_handler


def main():
    observers = []

    for key, to_path in TO_PATHS.items():
        from_path = FROM_PATHS[key]
        event_handler = create_event_handler(to_path, from_path)

        observer = Observer()
        observer.schedule(event_handler, to_path, recursive=True)

        observers.append(observer)

    for observer in observers:
        observer.start()

    try:
        while True:
            time.sleep(100)
    finally:
        for observer in observers:
            observer.stop()
            observer.join()


if __name__ == '__main__':
    main()
