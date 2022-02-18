# This will be invoked by the System Information menu entry

import tempfile
import mne


def main():
    report = mne.Report('MNE System Information')
    report.add_sys_info('System Information')

    report_file = tempfile.NamedTemporaryFile(
        prefix='mne_sys_info',
        suffix='.html',
        delete=False
    )
    report_file.close()
    report.save(fname=report_file.name, open_browser=True, overwrite=True)


if __name__ == '__main__':
    main()
