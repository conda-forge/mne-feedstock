# This will be invoked by the System Information menu entry

import tempfile
import mne


def main():
    report = mne.Report()
    report.add_sys_info()

    report_file = tempfile.NamedTemporaryFile(
        prefix='mne_sys_info',
        suffix='.html'
    )
    report.save(fname=report_file, open_browser=True)


if __name__ == '__main__':
    main()
