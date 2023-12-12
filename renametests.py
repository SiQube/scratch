import argparse
import os
import shutil


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument('--data', type=str)
    args = parser.parse_args()
    data_path = args.data
    for file_name in os.listdir(data_path):
        if file_name.startswith('test_') and file_name.endswith('.py'):
            file_path = os.path.join(data_path, file_name)
            _test = file_name.split('_')[0]
            _filename = file_name.split('_')[1].split('.')[0]
            shutil.move(file_path, os.path.join(data_path, f'{_filename}_{_test}.py'))
        else:
            continue


if __name__ == '__main__':
    raise SystemExit(main())

