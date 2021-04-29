import React from 'react';

class CollectionForm extends React.Component {
    constructor(props) {
        super(props);
        this.onSubmit = this.onSubmit.bind(this);
        this.state = {
            currentUserId: this.props.currentUserId,
            title: ''
        }
    }

    handleBody() {
        return e => {
            this.setState({ title: e.currentTarget.value })
        }
    }

    onSubmit(e) {
        e.preventDefault();
        const collection = {
            userId: this.state.currentUserId,
            title: this.state.title
        }
        this.props.createCollection(collection)
    }

    onClose(e) {
        e.preventDefault(); 
        this.props.onClose && this.props.onClose(e);
    };

    render() {
        if(!this.props.show){
            return null;
        } else {
            return (
                <div className='collection-form-modal'>
                    <form onSubmit={(e) => this.onSubmit(e)}>
                        <p>Create a Collection</p>
                        <p>Give your collection a name. It helps to be specific.</p>
                        <input type='text' onChange={this.handleBody()} placeholder='e.g. Favorite Fantasy Stories'></input>
                        <button type='submit'>Create Collection</button>
                        <br></br>
                    </form>
                    <button
                        onClick={e => {
                            this.onClose(e);
                        }}
                    >Close
                    </button>
                </div>
            )
        }
    }

}

export default CollectionForm;