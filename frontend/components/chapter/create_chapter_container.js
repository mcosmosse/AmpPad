import { connect } from 'react-redux';
import ChapterForm from './chapter_form';
import { fetchChapter, updateChapter } from '../../actions/chapter_actions';

const mSTP = (state) => ({
    chapter: Object.values(state.entities.chapters)[0],
    formType: 'Update Chapter'
});

const mDTP = dispatch => ({
    action: (chapter) => dispatch(updateChapter(chapter)),
    fetchChapter: (id) => dispatch(fetchChapter(id))
});

export default connect(mSTP, mDTP)(ChapterForm);