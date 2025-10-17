import os, shutil

PATH = "/home/vinzenz"

ORDNER = ["Ordner", "Linux", "Dateien", "Scripts", "Media", "Rest"]

image_extensions = ["jpg", "jpeg", "jpe", "jif", "jfif", "jfi", "png", "gif", "webp", "tiff", "tif", "psd", "raw", "arw", "cr2", "nrw",
                    "k25", "bmp", "dib", "heif", "heic", "ind", "indd", "indt", "jp2", "j2k", "jpf", "jpf", "jpx", "jpm", "mj2", "svg", "svgz", "ai", "eps", "ico"]

document_extensions = ["doc", "docx", "odt",
                       "pdf", "xls", "xlsx", "ppt", "pptx"]

programming_extensions = ["c","py","java","cpp","js","html","css","php"]


def move_file(name, end):
    dest = ""

    for ex in document_extensions:
        if datei.endswith(ex):
            dest = "Dateien"

    for ex in image_extensions:
        if datei.endswith(ex):
            dest = "Media"

    for ex in programming_extensions:
        if datei.endswith(ex):
            dest = "Scripts"

    if dest == "":
        dest = "Rest"
    
    if (datei.endswith("zip")) or (end == splitDatei[0]) :
        if dest not in ORDNER:
            dest = "Ordner"
    
    if dest != None and dest != "" and os.path.exists(PATH+"/"+dest):
        shutil.move(f"{PATH}/Downloads/{name}", f"{PATH}/{dest}/{name}")
        print(f"'{name} wurde nach {PATH}/{dest} verschoben.'")

def check_dirs(PATH):
    for ordner in ORDNER:
        if not os.path.exists(f"{PATH}/{ordner}"):
            os.mkdir(f"{PATH}/{ordner}")


check_dirs(PATH)

for datei in os.listdir(PATH+"/Downloads"):
    splitDatei = datei.split(".")
    endung = splitDatei[-1]
    move_file(datei, endung)
