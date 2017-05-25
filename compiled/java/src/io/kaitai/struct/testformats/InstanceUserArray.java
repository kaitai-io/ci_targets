// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class InstanceUserArray extends KaitaiStruct {
    public static InstanceUserArray fromFile(String fileName) throws IOException {
        return new InstanceUserArray(new KaitaiStream(fileName));
    }

    public InstanceUserArray(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public InstanceUserArray(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public InstanceUserArray(KaitaiStream _io, KaitaiStruct _parent, InstanceUserArray _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.ofs = this._io.readU4le();
        this.entrySize = this._io.readU4le();
        this.qtyEntries = this._io.readU4le();
    }
    public static class Entry extends KaitaiStruct {
        public static Entry fromFile(String fileName) throws IOException {
            return new Entry(new KaitaiStream(fileName));
        }

        public Entry(KaitaiStream _io) {
            super(_io);
            _init();
        }

        public Entry(KaitaiStream _io, InstanceUserArray _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public Entry(KaitaiStream _io, InstanceUserArray _parent, InstanceUserArray _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _init();
        }

        private void _init() {
            _read();
        }
        private void _read() {
            this.word1 = this._io.readU2le();
            this.word2 = this._io.readU2le();
        }
        private int word1;
        private int word2;
        private InstanceUserArray _root;
        private InstanceUserArray _parent;
        public int word1() { return word1; }
        public int word2() { return word2; }
        public InstanceUserArray _root() { return _root; }
        public InstanceUserArray _parent() { return _parent; }
    }
    private ArrayList<Entry> userEntries;
    public ArrayList<Entry> userEntries() {
        if (this.userEntries != null)
            return this.userEntries;
        if (ofs() > 0) {
            long _pos = this._io.pos();
            this._io.seek(ofs());
            this._raw_userEntries = new ArrayList<byte[]>((int) (qtyEntries()));
            userEntries = new ArrayList<Entry>((int) (qtyEntries()));
            for (int i = 0; i < qtyEntries(); i++) {
                this._raw_userEntries.add(this._io.readBytes(entrySize()));
                KaitaiStream _io__raw_userEntries = new KaitaiStream(_raw_userEntries.get(_raw_userEntries.size() - 1));
                this.userEntries.add(new Entry(_io__raw_userEntries, this, _root));
            }
            this._io.seek(_pos);
        }
        return this.userEntries;
    }
    private long ofs;
    private long entrySize;
    private long qtyEntries;
    private InstanceUserArray _root;
    private KaitaiStruct _parent;
    private ArrayList<byte[]> _raw_userEntries;
    public long ofs() { return ofs; }
    public long entrySize() { return entrySize; }
    public long qtyEntries() { return qtyEntries; }
    public InstanceUserArray _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public ArrayList<byte[]> _raw_userEntries() { return _raw_userEntries; }
}
