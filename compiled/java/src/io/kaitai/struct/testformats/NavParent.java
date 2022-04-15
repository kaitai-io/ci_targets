// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class NavParent extends KaitaiStruct {
    public static NavParent fromFile(String fileName) throws IOException {
        return new NavParent(new ByteBufferKaitaiStream(fileName));
    }

    public NavParent(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParent(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NavParent(KaitaiStream _io, KaitaiStruct _parent, NavParent _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.header = new HeaderObj(this._io, this, _root);
        this.index = new IndexObj(this._io, this, _root);
    }
    public static class HeaderObj extends KaitaiStruct {
        public static HeaderObj fromFile(String fileName) throws IOException {
            return new HeaderObj(new ByteBufferKaitaiStream(fileName));
        }

        public HeaderObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public HeaderObj(KaitaiStream _io, NavParent _parent) {
            this(_io, _parent, null);
        }

        public HeaderObj(KaitaiStream _io, NavParent _parent, NavParent _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.qtyEntries = this._io.readU4le();
            this.filenameLen = this._io.readU4le();
        }
        private long qtyEntries;
        private long filenameLen;
        private NavParent _root;
        private NavParent _parent;
        public long qtyEntries() { return qtyEntries; }
        public long filenameLen() { return filenameLen; }
        public NavParent _root() { return _root; }
        public NavParent _parent() { return _parent; }
    }
    public static class IndexObj extends KaitaiStruct {
        public static IndexObj fromFile(String fileName) throws IOException {
            return new IndexObj(new ByteBufferKaitaiStream(fileName));
        }

        public IndexObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public IndexObj(KaitaiStream _io, NavParent _parent) {
            this(_io, _parent, null);
        }

        public IndexObj(KaitaiStream _io, NavParent _parent, NavParent _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.magic = this._io.readBytes(4);
            this.entries = new ArrayList<Entry>();
            for (int i = 0; i < _parent().header().qtyEntries(); i++) {
                this.entries.add(new Entry(this._io, this, _root));
            }
        }
        private byte[] magic;
        private ArrayList<Entry> entries;
        private NavParent _root;
        private NavParent _parent;
        public byte[] magic() { return magic; }
        public ArrayList<Entry> entries() { return entries; }
        public NavParent _root() { return _root; }
        public NavParent _parent() { return _parent; }
    }
    public static class Entry extends KaitaiStruct {
        public static Entry fromFile(String fileName) throws IOException {
            return new Entry(new ByteBufferKaitaiStream(fileName));
        }

        public Entry(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Entry(KaitaiStream _io, NavParent.IndexObj _parent) {
            this(_io, _parent, null);
        }

        public Entry(KaitaiStream _io, NavParent.IndexObj _parent, NavParent _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.filename = new String(this._io.readBytes(_parent()._parent().header().filenameLen()), Charset.forName("UTF-8"));
        }
        private String filename;
        private NavParent _root;
        private NavParent.IndexObj _parent;
        public String filename() { return filename; }
        public NavParent _root() { return _root; }
        public NavParent.IndexObj _parent() { return _parent; }
    }
    private HeaderObj header;
    private IndexObj index;
    private NavParent _root;
    private KaitaiStruct _parent;
    public HeaderObj header() { return header; }
    public IndexObj index() { return index; }
    public NavParent _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
