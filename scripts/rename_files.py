import os
import glob

# Find all files with hyphens in their names
files_to_rename = glob.glob('*-*.*')

for file_path in files_to_rename:
    # Replace hyphens with underscores
    new_file_path = file_path.replace('-', '_')
    
    # Rename the file
    os.rename(file_path, new_file_path)
    print(f'Renamed: {file_path} → {new_file_path}')