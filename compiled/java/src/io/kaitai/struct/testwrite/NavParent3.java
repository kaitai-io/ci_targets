// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.List;
import java.util.ArrayList;

public class NavParent3 extends KaitaiStruct.ReadWrite {
    public static NavParent3 fromFile(String fileName) throws IOException {
        return new NavParent3(new ByteBufferKaitaiStream(fileName));
    }
    public NavParent3() {
        this(null, null, null);
    }

    public NavParent3(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParent3(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavParent3(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParent3 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.ofsTags = this._io.readU4le();
        this.numTags = this._io.readU4le();
        _dirty = false;
    }

    public void _fetchInstances() {
        tags();
        if (this.tags != null) {
            for (int i = 0; i < this.tags.size(); i++) {
                this.tags.get(((Number) (i)).intValue())._fetchInstances();
            }
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteTags = _enabledTags;
        this._io.writeU4le(this.ofsTags);
        this._io.writeU4le(this.numTags);
    }

    public void _check() {
        if (_enabledTags) {
            if (this.tags.size() != numTags())
                throw new ConsistencyError("tags", numTags(), this.tags.size());
            for (int i = 0; i < this.tags.size(); i++) {
                if (!Objects.equals(this.tags.get(((Number) (i)).intValue())._root(), _root()))
                    throw new ConsistencyError("tags", _root(), this.tags.get(((Number) (i)).intValue())._root());
                if (!Objects.equals(this.tags.get(((Number) (i)).intValue())._parent(), this))
                    throw new ConsistencyError("tags", this, this.tags.get(((Number) (i)).intValue())._parent());
            }
        }
        _dirty = false;
    }
    public static class Tag extends KaitaiStruct.ReadWrite {
        public static Tag fromFile(String fileName) throws IOException {
            return new Tag(new ByteBufferKaitaiStream(fileName));
        }
        public Tag() {
            this(null, null, null);
        }

        public Tag(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Tag(KaitaiStream _io, NavParent3 _parent) {
            this(_io, _parent, null);
        }

        public Tag(KaitaiStream _io, NavParent3 _parent, NavParent3 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.name = new String(this._io.readBytes(4), StandardCharsets.US_ASCII);
            this.ofs = this._io.readU4le();
            this.numItems = this._io.readU4le();
            _dirty = false;
        }

        public void _fetchInstances() {
            tagContent();
            if (this.tagContent != null) {
                switch (name()) {
                case "RAHC": {
                    this.tagContent._fetchInstances();
                    break;
                }
                }
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteTagContent = _enabledTagContent;
            this._io.writeBytes((this.name).getBytes(Charset.forName("ASCII")));
            this._io.writeU4le(this.ofs);
            this._io.writeU4le(this.numItems);
        }

        public void _check() {
            if ((this.name).getBytes(Charset.forName("ASCII")).length != 4)
                throw new ConsistencyError("name", 4, (this.name).getBytes(Charset.forName("ASCII")).length);
            if (_enabledTagContent) {
                switch (name()) {
                case "RAHC": {
                    if (!Objects.equals(this.tagContent._root(), _root()))
                        throw new ConsistencyError("tag_content", _root(), this.tagContent._root());
                    if (!Objects.equals(this.tagContent._parent(), this))
                        throw new ConsistencyError("tag_content", this, this.tagContent._parent());
                    break;
                }
                }
            }
            _dirty = false;
        }
        public static class TagChar extends KaitaiStruct.ReadWrite {
            public static TagChar fromFile(String fileName) throws IOException {
                return new TagChar(new ByteBufferKaitaiStream(fileName));
            }
            public TagChar() {
                this(null, null, null);
            }

            public TagChar(KaitaiStream _io) {
                this(_io, null, null);
            }

            public TagChar(KaitaiStream _io, NavParent3.Tag _parent) {
                this(_io, _parent, null);
            }

            public TagChar(KaitaiStream _io, NavParent3.Tag _parent, NavParent3 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.content = new String(this._io.readBytes(_parent().numItems()), StandardCharsets.US_ASCII);
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBytes((this.content).getBytes(Charset.forName("ASCII")));
            }

            public void _check() {
                if ((this.content).getBytes(Charset.forName("ASCII")).length != _parent().numItems())
                    throw new ConsistencyError("content", _parent().numItems(), (this.content).getBytes(Charset.forName("ASCII")).length);
                _dirty = false;
            }
            public String content() { return content; }
            public void setContent(String _v) { _dirty = true; content = _v; }
            public NavParent3 _root() { return _root; }
            public void set_root(NavParent3 _v) { _dirty = true; _root = _v; }
            public NavParent3.Tag _parent() { return _parent; }
            public void set_parent(NavParent3.Tag _v) { _dirty = true; _parent = _v; }
            private String content;
            private NavParent3 _root;
            private NavParent3.Tag _parent;
        }
        public TagChar tagContent() {
            if (_shouldWriteTagContent)
                _writeTagContent();
            if (this.tagContent != null)
                return this.tagContent;
            if (!_enabledTagContent)
                return null;
            KaitaiStream io = _root()._io();
            long _pos = io.pos();
            io.seek(ofs());
            switch (name()) {
            case "RAHC": {
                this.tagContent = new TagChar(io, this, _root);
                this.tagContent._read();
                break;
            }
            }
            io.seek(_pos);
            return this.tagContent;
        }
        public void setTagContent(TagChar _v) { _dirty = true; tagContent = _v; }
        public void setTagContent_Enabled(boolean _v) { _dirty = true; _enabledTagContent = _v; }

        private void _writeTagContent() {
            _shouldWriteTagContent = false;
            KaitaiStream io = _root()._io();
            long _pos = io.pos();
            io.seek(ofs());
            switch (name()) {
            case "RAHC": {
                this.tagContent._write_Seq(io);
                break;
            }
            }
            io.seek(_pos);
        }
        public String name() { return name; }
        public void setName(String _v) { _dirty = true; name = _v; }
        public long ofs() { return ofs; }
        public void setOfs(long _v) { _dirty = true; ofs = _v; }
        public long numItems() { return numItems; }
        public void setNumItems(long _v) { _dirty = true; numItems = _v; }
        public NavParent3 _root() { return _root; }
        public void set_root(NavParent3 _v) { _dirty = true; _root = _v; }
        public NavParent3 _parent() { return _parent; }
        public void set_parent(NavParent3 _v) { _dirty = true; _parent = _v; }
        private TagChar tagContent;
        private boolean _shouldWriteTagContent = false;
        private boolean _enabledTagContent = true;
        private String name;
        private long ofs;
        private long numItems;
        private NavParent3 _root;
        private NavParent3 _parent;
    }
    public List<Tag> tags() {
        if (_shouldWriteTags)
            _writeTags();
        if (this.tags != null)
            return this.tags;
        if (!_enabledTags)
            return null;
        long _pos = this._io.pos();
        this._io.seek(ofsTags());
        this.tags = new ArrayList<Tag>();
        for (int i = 0; i < numTags(); i++) {
            Tag _t_tags = new Tag(this._io, this, _root);
            try {
                _t_tags._read();
            } finally {
                this.tags.add(_t_tags);
            }
        }
        this._io.seek(_pos);
        return this.tags;
    }
    public void setTags(List<Tag> _v) { _dirty = true; tags = _v; }
    public void setTags_Enabled(boolean _v) { _dirty = true; _enabledTags = _v; }

    private void _writeTags() {
        _shouldWriteTags = false;
        long _pos = this._io.pos();
        this._io.seek(ofsTags());
        for (int i = 0; i < this.tags.size(); i++) {
            this.tags.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        this._io.seek(_pos);
    }
    public long ofsTags() { return ofsTags; }
    public void setOfsTags(long _v) { _dirty = true; ofsTags = _v; }
    public long numTags() { return numTags; }
    public void setNumTags(long _v) { _dirty = true; numTags = _v; }
    public NavParent3 _root() { return _root; }
    public void set_root(NavParent3 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Tag> tags;
    private boolean _shouldWriteTags = false;
    private boolean _enabledTags = true;
    private long ofsTags;
    private long numTags;
    private NavParent3 _root;
    private KaitaiStruct.ReadWrite _parent;
}
