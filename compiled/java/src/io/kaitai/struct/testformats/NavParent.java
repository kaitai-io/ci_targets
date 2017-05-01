// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class NavParent extends KaitaiStruct {
    public static NavParent fromFile(String fileName) throws IOException {
        return new NavParent(new KaitaiStream(fileName));
    }

    public NavParent(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public NavParent(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public NavParent(KaitaiStream _io, KaitaiStruct _parent, NavParent _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.header = new HeaderObj(this._io, this, _root);
        this.index = new IndexObj(this._io, this, _root);
    }
    public static class HeaderObj extends KaitaiStruct {
        public static HeaderObj fromFile(String fileName) throws IOException {
            return new HeaderObj(new KaitaiStream(fileName));
        }

        public HeaderObj(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public HeaderObj(KaitaiStream _io, NavParent _parent) {
            super(_io);
            this._parent = _parent;
            _read();
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
            return new IndexObj(new KaitaiStream(fileName));
        }

        public IndexObj(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public IndexObj(KaitaiStream _io, NavParent _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public IndexObj(KaitaiStream _io, NavParent _parent, NavParent _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.magic = this._io.readBytes(4);
            entries = new ArrayList<Entry>((int) (_parent().header().qtyEntries()));
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
            return new Entry(new KaitaiStream(fileName));
        }

        public Entry(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Entry(KaitaiStream _io, NavParent.IndexObj _parent) {
            super(_io);
            this._parent = _parent;
            _read();
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
