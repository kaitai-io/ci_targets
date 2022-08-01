// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class InstanceUserArray extends KaitaiStruct {
    public static InstanceUserArray fromFile(String fileName) throws IOException {
        return new InstanceUserArray(new ByteBufferKaitaiStream(fileName));
    }

    public InstanceUserArray(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceUserArray(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public InstanceUserArray(KaitaiStream _io, KaitaiStruct _parent, InstanceUserArray _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.ofs = this._io.readU4le();
        this.entrySize = this._io.readU4le();
        this.qtyEntries = this._io.readU4le();
    }
    public static class Entry extends KaitaiStruct {
        public static Entry fromFile(String fileName) throws IOException {
            return new Entry(new ByteBufferKaitaiStream(fileName));
        }

        public Entry(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Entry(KaitaiStream _io, InstanceUserArray _parent) {
            this(_io, _parent, null);
        }

        public Entry(KaitaiStream _io, InstanceUserArray _parent, InstanceUserArray _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
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
            this._raw_userEntries = new ArrayList<byte[]>();
            this.userEntries = new ArrayList<Entry>();
            for (int i = 0; i < qtyEntries(); i++) {
                KaitaiStream _io_userEntries = this._io.substream(entrySize());;
                this.userEntries.add(new Entry(_io_userEntries, this, _root));
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
    public long ofs() { return ofs; }
    public long entrySize() { return entrySize; }
    public long qtyEntries() { return qtyEntries; }
    public InstanceUserArray _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
