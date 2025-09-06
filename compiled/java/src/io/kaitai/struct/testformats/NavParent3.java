// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.ArrayList;

public class NavParent3 extends KaitaiStruct {
    public static NavParent3 fromFile(String fileName) throws IOException {
        return new NavParent3(new ByteBufferKaitaiStream(fileName));
    }

    public NavParent3(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParent3(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NavParent3(KaitaiStream _io, KaitaiStruct _parent, NavParent3 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.ofsTags = this._io.readU4le();
        this.numTags = this._io.readU4le();
    }

    public void _fetchInstances() {
        tags();
        if (this.tags != null) {
            for (int i = 0; i < this.tags.size(); i++) {
                this.tags.get(((Number) (i)).intValue())._fetchInstances();
            }
        }
    }
    public static class Tag extends KaitaiStruct {
        public static Tag fromFile(String fileName) throws IOException {
            return new Tag(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.name = new String(this._io.readBytes(4), StandardCharsets.US_ASCII);
            this.ofs = this._io.readU4le();
            this.numItems = this._io.readU4le();
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
        public static class TagChar extends KaitaiStruct {
            public static TagChar fromFile(String fileName) throws IOException {
                return new TagChar(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
                this.content = new String(this._io.readBytes(_parent().numItems()), StandardCharsets.US_ASCII);
            }

            public void _fetchInstances() {
            }
            private String content;
            private NavParent3 _root;
            private NavParent3.Tag _parent;
            public String content() { return content; }
            public NavParent3 _root() { return _root; }
            public NavParent3.Tag _parent() { return _parent; }
        }
        private TagChar tagContent;
        public TagChar tagContent() {
            if (this.tagContent != null)
                return this.tagContent;
            KaitaiStream io = _root()._io();
            long _pos = io.pos();
            io.seek(ofs());
            switch (name()) {
            case "RAHC": {
                this.tagContent = new TagChar(io, this, _root);
                break;
            }
            }
            io.seek(_pos);
            return this.tagContent;
        }
        private String name;
        private long ofs;
        private long numItems;
        private NavParent3 _root;
        private NavParent3 _parent;
        public String name() { return name; }
        public long ofs() { return ofs; }
        public long numItems() { return numItems; }
        public NavParent3 _root() { return _root; }
        public NavParent3 _parent() { return _parent; }
    }
    private List<Tag> tags;
    public List<Tag> tags() {
        if (this.tags != null)
            return this.tags;
        long _pos = this._io.pos();
        this._io.seek(ofsTags());
        this.tags = new ArrayList<Tag>();
        for (int i = 0; i < numTags(); i++) {
            this.tags.add(new Tag(this._io, this, _root));
        }
        this._io.seek(_pos);
        return this.tags;
    }
    private long ofsTags;
    private long numTags;
    private NavParent3 _root;
    private KaitaiStruct _parent;
    public long ofsTags() { return ofsTags; }
    public long numTags() { return numTags; }
    public NavParent3 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
