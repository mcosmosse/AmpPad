import { connect } from 'react-redux';
import StoryForm from './story_form';
import { createStory } from '../../actions/story_actions';

const mSTP = () => ({
    story: {
        title: '',
        description: '',
        complete: false
    },
    formType: 'Create Story'
});

const mDTP = dispatch => ({
    action: (story) => dispatch(createStory(story))
});

export default connect(mSTP, mDTP)(StoryForm);