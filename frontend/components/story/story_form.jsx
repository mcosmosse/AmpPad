import React from 'react';

class StoryForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = this.props.story;
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return e => {
            this.setState({ [field]: e.currentTarget.value })
        }
    } 

    handleSubmit(e) {
        e.preventDefault();
        return this.props.action(this.state)
                .then(res => this.props.history.push('/home'));
                // res is an action, has payload
                // storyId and chapterId, use to push new url
    }

    render() { 
        return (
            <form className='story-form' onSubmit={this.handleSubmit}>
                <h2>{this.props.formType}</h2>
                <label><span>Title</span>
                    <input 
                    type="text"
                    value={this.state.title}
                    onChange={this.update('title')}/>
                </label>
                <label><span>Description</span>
                    <input 
                    type="text"
                    value={this.state.description}
                    onChange={this.update('description')}/>
                </label>
                <label><span>Completed?</span>
                    <label>Yes
                        <input type="radio" value={true}/>
                    </label>
                    <br></br>
                    <label>No
                        <input type="radio" value={false}/>
                    </label>
                </label>
                <button type="submit" value={this.props.formType}>{this.props.formType}</button>
                {/* getting a no=false in url??? */}
            </form>
        );
    }
}
 
export default StoryForm;