import gc
import vfs
from flashbdev import bdev


def _erase_bdev():
    from esp import flash_erase

    i = bdev.info()
    for s in range(i[2] // 4096, (i[2] + i[3]) // 4096):
        flash_erase(s)


if bdev:
    try:
        vfs.mount(bdev, "/")
    except OSError:
        _erase_bdev()
        vfs.VfsLfs2.mkfs(bdev)
        try:
            vfs.mount(bdev, "/")
        except OSError:
            print("Failed to make filesystem after wiping")
        else:
            with open(".mkfs", "wb") as f:
                pass

gc.collect()
