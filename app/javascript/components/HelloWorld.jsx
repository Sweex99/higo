import React from 'react';
import App from "./App";

class HelloWorld extends App {
  render() {
    return (
      <section className="section">
        <div className="section-header">
          <h1>Modal</h1>
          <div className="section-header-breadcrumb">
            <div className="breadcrumb-item active"><a href="#">Dashboard</a></div>
            <div className="breadcrumb-item"><a href="#">Bootstrap Components</a></div>
            <div className="breadcrumb-item">Modal</div>
          </div>
        </div>

        <div className="section-body">
          <h2 className="section-title">Modal</h2>
          <p className="section-lead">
            Use Bootstrap’s JavaScript modal plugin to add dialogs to your site for lightboxes, user notifications, or
            completely custom content.
          </p>

          <div className="row">
            <div className="col-12 col-md-6 col-lg-6">
              <div className="modal-dialog m-0" role="document">
                <div className="modal-content">
                  <div className="modal-header">
                    <h5 className="modal-title">Modal Template</h5>
                    <button type="button" className="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">×</span>
                    </button>
                  </div>
                  <div className="modal-body">
                    <p>Modal body text goes here.</p>
                  </div>
                  <div className="modal-footer">
                    <button type="button" className="btn btn-primary">Save changes</button>
                    <button type="button" className="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
              <div className="card card-mt">
                <div className="card-header">
                  <h4>Modal Confirm</h4>
                </div>
                <div className="card-body">
                  <p className="mb-2">You can easily change the default browser confirmation box with a bootstrap
                    modal.</p>
                  <button className="btn btn-danger trigger--fire-modal-7"
                          data-confirm="Realy?|Do you want to continue?" data-confirm-yes="alert('Deleted :)');">Delete
                  </button>
                </div>
              </div>
              <div className="card">
                <div className="card-header">
                  <h4>The Bootstrap Way</h4>
                </div>
                <div className="card-body">
                  <p className="mb-2">Use the Bootstrap method to create modal. You need to create an HTML structure for
                    modal and the following button will trigger it.</p>
                  <button className="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Aw, yeah!</button>
                </div>
              </div>
            </div>
            <div className="col-12 col-md-6 col-lg-6">
              <div className="card">
                <div className="card-header">
                  <h4>Modal Demo</h4>
                </div>
                <div className="card-body">
                  <p className="mb-2">We've created a plugin to easily create a bootstrap modal.</p>
                  <button className="btn btn-primary trigger--fire-modal-1" id="modal-1">Launch Modal</button>
                </div>
              </div>
              <div className="card">
                <div className="card-header">
                  <h4>Modal Center</h4>
                </div>
                <div className="card-body">
                  <p className="mb-2">You can change the modal position to center. </p>
                  <button className="btn btn-primary trigger--fire-modal-2" id="modal-2">Launch Modal</button>
                </div>
              </div>
              <div className="card">
                <div className="card-header">
                  <h4>The Others</h4>
                </div>
                <div className="card-body">
                  <p className="mb-2">Check the <code>modal.js</code> code in the <code>dist/js/page</code> folder to
                    get the source code.</p>
                  <div className="buttons">
                    <button className="btn btn-primary trigger--fire-modal-3" id="modal-3">Buttons</button>
                    <button className="btn btn-primary trigger--fire-modal-4" id="modal-4">Footer Background</button>
                    <button className="btn btn-primary trigger--fire-modal-5" id="modal-5">Login</button>
                    <button className="btn btn-primary trigger--fire-modal-6" id="modal-6">Something in the Footer
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    );
  };
}

export default HelloWorld;
