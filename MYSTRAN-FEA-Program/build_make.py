import os

def get_files_of_type(dirname, extension='.txt', maxSize=100., recursive=False):
    """
    Gets the list of all the files with a given extension in the specified directory

    :param dirname:   the directory name
    :param extension: list of filetypes to get (default='.txt')
    :param maxSize:   size in MB for max file size
    :returns: list of all the files with a given extension in the specified directory
    """
    filenames = []
    if recursive:
        for f in os.listdir(dirname):
            dirname_file = os.path.join(dirname, f)
            if os.path.isdir(dirname_file):
                filenames += get_files_of_type(dirname_file, extension, recursive=recursive)
            else:
                if os.path.splitext(f)[1].endswith(extension):
                    filenames.append(os.path.join(dirname, f))
        return filenames
    else:
        if not os.path.exists(dirname):
            return []
        return [os.path.join(dirname, f) for f in os.listdir(dirname)
                if os.path.splitext(f)[1].endswith(extension)
                 and os.path.getsize(os.path.join(dirname, f)) / (1048576.) <= maxSize]

src_dir = os.path.join('1-SRC', 'a-Windows-version')
f90_files = get_files_of_type(src_dir, 'f90', recursive=True)

f90_files2 = [fname.replace('\\', '\\\\') for fname in f90_files]
build_msg = 'gfortran -o mystran ' + ' '.join(f90_files2)
#for fname in f90_files:
#    print(fname)

with open('build.sh', 'w') as f:
    f.write(build_msg)
