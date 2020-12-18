import React from 'react';
import { connect } from 'react-redux';
import StoryForm from './story_form';
import { fetchStory, updateStory } from '../../actions/story_actions';

class EditStoryForm extends React.Component {

    componentDidMount() {
        this.props.fetchStory(this.props.match.params.storyId);
    }

    render() {
        const { action, formType, story } = this.props;

        if (story === undefined) {
            return null;
        } else {
            return (
                <StoryForm
                    action={action}
                    formType={formType}
                    story={story}
                />
            );
        }
    }
}

const mSTP = (state, ownProps) => ({
    story: state.stories[ownProps.match.params.storyId],
    formType: 'Edit Story'
});

const mDTP = dispatch => ({
    action: (story) => dispatch(updateStory(story)),
    fetchStory: (id) => dispatch(fetchStory(id))
});

export default connect(mSTP, mDTP)(EditStoryForm);