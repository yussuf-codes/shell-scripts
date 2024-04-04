import sys


def get_python3_minor_version() -> int:
    return sys.version_info.minor


def write_file(file_name: str, string: str) -> None:
    file_name += ".txt"
    with open(file_name, 'w') as text_file:
        text_file.write(string)


def main():
    python3_minor_version = str(get_python3_minor_version())
    write_file("python3_minor_version", python3_minor_version)


if __name__ == "__main__":
    main()
