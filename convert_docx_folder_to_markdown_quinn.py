"""Convert docx files in a specified folder to markdown."""
""" By Quinn McHugh

from pathlib import Path
import subprocess
import logging

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s:%(levelname)s:%(processName)s:%(threadName)s:%(module)s:%(funcName)s:%(lineno)d - %(message)s",
    datefmt="%Y-%m-%dT%H:%M:%S",
    handlers=(logging.StreamHandler(),),
)


def docx_to_md(file_path: Path):
    """Convert docx file to markdown using pandoc.

    Args:
        file_path (Path): The path of the markdown file to be converted
    """
    markdown_file_path = file_path.with_suffix(".md")
    subprocess.run(
        [
            "pandoc",
            "-s",
            str(file_path),
            "--wrap=none",
            "-t",
            "markdown",
            "-o",
            str(markdown_file_path),
        ]
    )
    logging.info(f"Converted '{file_path.name}' to markdown.")


def docx_in_folder_to_md(root_folder_path: Path):
    """Convert all docx files with a root folder and its subfolders to markdown.

    Args:
        root_folder_path (Path): The path of the root folder from which docx files will be searched for recursively.
    """
    root_folder_path = Path(root_folder_path)
    docx_files = root_folder_path.rglob("*.docx")
    for file_path in docx_files:
        docx_to_md(file_path)


def main():
    FOLDER_PATH = r"C:\Users\Quinn\Insync\qpmchugh@gmail.com\Google Drive\000 Second Brain\001 My Vault"
    docx_in_folder_to_md(FOLDER_PATH)


if __name__ == "__main__":
    main()


