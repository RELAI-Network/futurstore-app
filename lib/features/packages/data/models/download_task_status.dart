/// Inspired of background_downloader DownloadTaskStatus.
enum DownloadTaskStatus {
  /// Task is enqueued on the native platform and waiting to start
  ///
  /// It may wait for resources, or for an appropriate network to become
  /// available before starting the actual download and changing state to
  /// `running`.
  enqueued,

  /// Task is running, i.e. actively downloading
  running,

  /// Task has completed successfully
  ///
  /// This is a final state
  complete,

  /// Task has completed because the url was not found (Http status code 404)
  ///
  /// This is a final state
  notFound,

  /// Task has failed due to an exception
  ///
  /// This is a final state
  failed,

  /// Task has been canceled by the user or the system
  ///
  /// This is a final state
  canceled,

  /// Task failed, and is now waiting to retry
  ///
  /// The task is held in this state until the exponential backoff time for
  /// this retry has passed, and will then be rescheduled on the native
  /// platform, switching state to `enqueued` and then `running`
  waitingToRetry,

  /// Task is in paused state and may be able to resume
  paused;

  /// True if this state is one of the 'final' states, meaning no more
  /// state changes are possible
  bool get isFinalState {
    switch (this) {
      case DownloadTaskStatus.complete:
      case DownloadTaskStatus.notFound:
      case DownloadTaskStatus.failed:
      case DownloadTaskStatus.canceled:
        return true;

      case DownloadTaskStatus.enqueued:
      case DownloadTaskStatus.running:
      case DownloadTaskStatus.waitingToRetry:
      case DownloadTaskStatus.paused:
        return false;
    }
  }

  /// True if this state is not a 'final' state, meaning more
  /// state changes are possible
  bool get isNotFinalState => !isFinalState;
}
