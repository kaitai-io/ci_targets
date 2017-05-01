// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class NavParent2 extends KaitaiStruct {
    public static NavParent2 fromFile(String fileName) throws IOException {
        return new NavParent2(new KaitaiStream(fileName));
    }

    public NavParent2(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public NavParent2(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public NavParent2(KaitaiStream _io, KaitaiStruct _parent, NavParent2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.ofsTags = this._io.readU4le();
        this.numTags = this._io.readU4le();
        tags = new ArrayList<Tag>((int) (numTags()));
        for (int i = 0; i < numTags(); i++) {
            this.tags.add(new Tag(this._io, this, _root));
        }
    }
    public static class Tag extends KaitaiStruct {
        public static Tag fromFile(String fileName) throws IOException {
            return new Tag(new KaitaiStream(fileName));
        }

        public Tag(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Tag(KaitaiStream _io, NavParent2 _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Tag(KaitaiStream _io, NavParent2 _parent, NavParent2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.name = new String(this._io.readBytes(4), Charset.forName("ASCII"));
            this.ofs = this._io.readU4le();
            this.numItems = this._io.readU4le();
        }
        public static class TagChar extends KaitaiStruct {
            public static TagChar fromFile(String fileName) throws IOException {
                return new TagChar(new KaitaiStream(fileName));
            }

            public TagChar(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public TagChar(KaitaiStream _io, NavParent2.Tag _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public TagChar(KaitaiStream _io, NavParent2.Tag _parent, NavParent2 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.content = new String(this._io.readBytes(_parent().numItems()), Charset.forName("ASCII"));
            }
            private String content;
            private NavParent2 _root;
            private NavParent2.Tag _parent;
            public String content() { return content; }
            public NavParent2 _root() { return _root; }
            public NavParent2.Tag _parent() { return _parent; }
        }
        private TagChar tagContent;
        public TagChar tagContent() {
            if (this.tagContent != null)
                return this.tagContent;
            KaitaiStream io = _root._io();
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
        private NavParent2 _root;
        private NavParent2 _parent;
        public String name() { return name; }
        public long ofs() { return ofs; }
        public long numItems() { return numItems; }
        public NavParent2 _root() { return _root; }
        public NavParent2 _parent() { return _parent; }
    }
    private long ofsTags;
    private long numTags;
    private ArrayList<Tag> tags;
    private NavParent2 _root;
    private KaitaiStruct _parent;
    public long ofsTags() { return ofsTags; }
    public long numTags() { return numTags; }
    public ArrayList<Tag> tags() { return tags; }
    public NavParent2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
