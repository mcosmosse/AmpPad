import React from 'react';
import { Link } from 'react-router-dom';
// import border from '../../../public/border.jpg';

class ChapterShow extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            open: false,
        };
    }

    componentDidMount() {
        this.props.fetchStory(this.props.match.params.storyId)
            .then(() => this.props.fetchChapter(this.props.match.params.chapterId));
        this.props.fetchCollections();
    }

    componentDidUpdate(prevProps) {
        if (prevProps.match.params.chapterId !== this.props.match.params.chapterId) {
            this.props.fetchChapter(this.props.match.params.chapterId);
        }
    }

    lastChapter() {
        if (parseInt(this.props.chapter.chapterNumber) >= this.props.chapters.length) {
            return (
                <div className='chapter-end'>End of Story</div>
            );
        } else {
            const nextChapter = this.props.chapters[this.props.chapter.chapterNumber];
            return (
                <Link className='chapter-end' to={`/stories/${this.props.chapter.storyId}/${nextChapter.id}`}>Next Chapter</Link>
            );
        }
    }

    editChapter() {
        if (this.props.chapter.userId === this.props.authorId) {
            return (
                <Link
                className='chapter-show-edit'
                to={`/stories/${this.props.match.params.storyId}/${this.props.match.params.chapterId}/edit`}
                >
                    ✎ Edit
                </Link>
            )
        } else {
            return null;
        }
    }

    handleButtonClick() {
        this.setState({
            open: !this.state.open
        });
    };

    addToCollection() {
        const { collections, story } = this.props;
        return (
            <div className='chapter-add-to-collection' onClick={() => this.handleButtonClick()}>
                <button type="button">
                    + 
                </button>
                {this.state.open &&
                    <div className='collection-list'>
                        <ul>
                            {collections.map((collection) => {
                                let collectionStories = Object.assign({}, ...collection.stories);
                                let isCollected = collectionStories[story.id];
                                if (isCollected === undefined) {
                                    return (                                
                                        <li onClick={() => this.props.createCollectionEntry({story_id: story.id, 
                                                                                            collection_id: collection.id})
                                                    .then(() => this.props.fetchCollections())} 
                                            key={collection.id}>
                                                {collection.title}
                                        </li>
                                    )
                                } else {
                                    return (
                                        <li onClick={() => this.props.deleteCollectionEntry({story_id: story.id,
                                                                                            collection_id: collection.id})
                                                    .then(() => this.props.fetchCollections())} 
                                            key={collection.id}>
                                                {collection.title} ✅
                                        </li>
                                    )
                                }
                            })}
                        </ul>
                    </div>
                }
            </div>
        )
    }

    vote() {
        if (this.props.chapter.votes === undefined) {
            return null;
        } else {
            const { chapter } = this.props;
            let currentUserId = this.props.authorId;
            let votes = Object.assign({}, ...chapter.votes)
            let isVoted = votes.user_id === currentUserId;
            if (!isVoted) {
                return (
                        <div className='chapter-vote' onClick={() => this.props.createVote({user_id: currentUserId, chapter_id: this.props.chapter.id})
                                            .then(() => this.props.fetchChapter(this.props.chapter.id))
                        }>★ Vote!</div>
                );
            } else {
                return (
                        <div className='chapter-vote' onClick={() => this.props.deleteVote({user_id: currentUserId, chapter_id: this.props.chapter.id})
                                            .then(() => this.props.fetchChapter(this.props.chapter.id))
                        }>★ Voted</div>
                );
            }
        }
        
    }

    handleDropdown(e) {
        e.currentTarget.classList.toggle('show-table')
    }

    handleBody() {
        return e => {
            this.setState({ body: e.currentTarget.value })
        }
    }

    handleSubmit(e) {
        e.preventDefault();
        let comment = {
            body: this.state.body,
            commenter_id: this.props.currentUserId,
            chapter_id: this.props.chapter.id,
        }
        this.props.createComment(comment).then(
            res => this.props.fetchChapter(res.comment.chapterId)
        );
        this.setState({body: ''});
        e.target.reset();
    }

    handleDelete(commentId) {
        this.props.deleteComment(commentId).then(
            res => this.props.fetchChapter(res.comment.chapterId)
        );
    }

    deleteComment(comment) {
        if (comment.commenterId === this.props.authorId || comment.authorId === this.props.story.userId) {
            return (
                <div onClick={() => this.handleDelete(comment.id)} >
                    <img className='delete-button' src={trash} />
                </div>
            );
        } else {
            return <div>
                not your comment
            </div>;
        }
    }

    render() {
        if (this.props.chapter === undefined) {
            return (
                null
            );
        } else {
            return (
                <div className='chapter-show-div'>
                    <div className='chapter-show-header'>
                        <ul className='chapter-show-table' onClick={this.handleDropdown}>
                            {this.props.story.title} <img className='dropdown-arrow' src={dropdown} />
                            {this.props.story.author}
                            <div>
                                <li><Link to={`/stories/${this.props.story.id}`}>{this.props.story.title}</Link></li>
                                {this.props.chapters.map((chapter) => {
                                    return (
                                        <li key={chapter.id}><Link to={`/stories/${chapter.storyId}/${chapter.id}`}>
                                            {chapter.chapterNumber}: {chapter.title}
                                        </Link></li>
                                    )
                                })}
                                <li><Link to={`/home`}>Return to Home Page</Link></li>
                            </div>
                        </ul>
                        <div className='chapter-show-header-features'>
                            {this.editChapter()}
                            {this.addToCollection()}
                            {this.vote()}
                        </div>
                    </div>
                    <h1>{this.props.chapter.title}</h1>
                    <img src={border} />
                    <pre className='chapter-show-text'>{this.props.chapter.body}</pre>
                    {this.lastChapter()}
                    <form className='chapter-comment-form' onSubmit={this.handleSubmit.bind(this)}>
                        <textarea onChange={this.handleBody()}
                            placeholder="Leave a comment"
                        />
                        <input className='comment-form-post' type='submit' value='Post'/>
                    </form>
                    <div className='chapter-comments'>
                        {this.props.comments.map((comment) => {
                            return (
                                <div className='chapter-comment' key={comment.id}>
                                    <div>
                                        <div className='chapter-commenter'>{comment.commenter}:</div>
                                        <br></br>
                                        {comment.body}
                                    </div>
                                    {this.deleteComment(comment)}
                                </div>
                            )
                        })}
                    </div>
                </div>
            );
        }
    }
}
 
export default ChapterShow;