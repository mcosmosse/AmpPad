import { connect } from 'react-redux';
import React from 'react';
import ChapterForm from './chapter_form';
import { fetchChapter, updateChapter, createChapter } from '../../actions/chapter_actions';
import { fetchStory } from '../../actions/story_actions';
import { orderChapters } from '../../reducers/selectors';

const mSTP = (state, ownProps) => ({
    chapter: state.entities.chapters[ownProps.match.params.chapterId],
    chapters: orderChapters(state, ownProps.match.params.storyId),
    story: state.entities.stories[ownProps.match.params.storyId],
    currentUserId: state.session.currentUserId,
    formType: 'Update Chapter'
});

const mDTP = dispatch => ({
    action: (chapter) => dispatch(updateChapter(chapter)),
    fetchChapter: (id) => dispatch(fetchChapter(id)),
    fetchStory: (id) => dispatch(fetchStory(id)),
    createChapter: (chapter) => dispatch(createChapter(chapter))
});

class EditChapterForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            mounted: false
        }
    }
    
    componentDidMount() {
        this.props.fetchStory(this.props.match.params.storyId).then(
            () => this.props.fetchChapter(this.props.match.params.chapterId)
        );
    }

    componentDidUpdate(prevProps) { 
        console.log(prevProps);
        if (prevProps.chapter != undefined) {
            if (this.props.match.params.chapterId != prevProps.chapter.id) {
                this.props.fetchChapter(this.props.match.params.chapterId);
            }
        }
    }

    render() {
        const { action, formType, history, chapter, story, chapters, currentUserId, createChapter } = this.props;

        if (!story || chapter.body === undefined) return null;

        return (
            <ChapterForm 
                action={action}
                formType={formType}
                chapter={chapter}
                chapters={chapters}
                history={history}
                story={story}
                currentUserId={currentUserId}
                createChapter={createChapter}
            />
        )
    }
}

export default connect(mSTP, mDTP)(EditChapterForm);