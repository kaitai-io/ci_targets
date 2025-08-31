// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class InstanceUserArray extends KaitaiStruct.ReadWrite {
    public static InstanceUserArray fromFile(String fileName) throws IOException {
        return new InstanceUserArray(new ByteBufferKaitaiStream(fileName));
    }
    public InstanceUserArray() {
        this(null, null, null);
    }

    public InstanceUserArray(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceUserArray(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public InstanceUserArray(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, InstanceUserArray _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.ofs = this._io.readU4le();
        this.entrySize = this._io.readU4le();
        this.qtyEntries = this._io.readU4le();
    }

    public void _fetchInstances() {
        if (ofs() > 0) {
            userEntries();
            for (int i = 0; i < this.userEntries.size(); i++) {
                this.userEntries.get(((Number) (i)).intValue())._fetchInstances();
            }
        }
    }

    public void _write_Seq() {
        _writeUserEntries = _toWriteUserEntries;
        this._io.writeU4le(this.ofs);
        this._io.writeU4le(this.entrySize);
        this._io.writeU4le(this.qtyEntries);
    }

    public void _check() {
    }
    public static class Entry extends KaitaiStruct.ReadWrite {
        public static Entry fromFile(String fileName) throws IOException {
            return new Entry(new ByteBufferKaitaiStream(fileName));
        }
        public Entry() {
            this(null, null, null);
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
        }
        public void _read() {
            this.word1 = this._io.readU2le();
            this.word2 = this._io.readU2le();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU2le(this.word1);
            this._io.writeU2le(this.word2);
        }

        public void _check() {
        }
        private int word1;
        private int word2;
        private InstanceUserArray _root;
        private InstanceUserArray _parent;
        public int word1() { return word1; }
        public void setWord1(int _v) { word1 = _v; }
        public int word2() { return word2; }
        public void setWord2(int _v) { word2 = _v; }
        public InstanceUserArray _root() { return _root; }
        public void set_root(InstanceUserArray _v) { _root = _v; }
        public InstanceUserArray _parent() { return _parent; }
        public void set_parent(InstanceUserArray _v) { _parent = _v; }
    }
    private List<Entry> userEntries;
    private boolean _writeUserEntries = false;
    private boolean _toWriteUserEntries = true;
    public List<Entry> userEntries() {
        if (_writeUserEntries)
            _writeUserEntries();
        if (this.userEntries != null)
            return this.userEntries;
        if (ofs() > 0) {
            long _pos = this._io.pos();
            this._io.seek(ofs());
            this._raw_userEntries = new ArrayList<byte[]>();
            this.userEntries = new ArrayList<Entry>();
            for (int i = 0; i < qtyEntries(); i++) {
                this._raw_userEntries.add(this._io.readBytes(entrySize()));
                KaitaiStream _io__raw_userEntries = new ByteBufferKaitaiStream(this._raw_userEntries.get(i));
                Entry _t_userEntries = new Entry(_io__raw_userEntries, this, _root);
                try {
                    _t_userEntries._read();
                } finally {
                    this.userEntries.add(_t_userEntries);
                }
            }
            this._io.seek(_pos);
        }
        return this.userEntries;
    }
    public void setUserEntries(List<Entry> _v) { userEntries = _v; }
    public void setUserEntries_ToWrite(boolean _v) { _toWriteUserEntries = _v; }

    public void _writeUserEntries() {
        _writeUserEntries = false;
        if (ofs() > 0) {
            long _pos = this._io.pos();
            this._io.seek(ofs());
            this._raw_userEntries = new ArrayList<byte[]>();
            for (int i = 0; i < this.userEntries.size(); i++) {
                final KaitaiStream _io__raw_userEntries = new ByteBufferKaitaiStream(entrySize());
                this._io.addChildStream(_io__raw_userEntries);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (entrySize()));
                    final InstanceUserArray _this = this;
                    final int _i = i;
                    _io__raw_userEntries.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_userEntries.add(_io__raw_userEntries.toByteArray());
                            if (_this._raw_userEntries.get(((Number) (_i)).intValue()).length != entrySize())
                                throw new ConsistencyError("raw(user_entries)", _this._raw_userEntries.get(((Number) (_i)).intValue()).length, entrySize());
                            parent.writeBytes(_this._raw_userEntries.get(((Number) (_i)).intValue()));
                        }
                    });
                }
                this.userEntries.get(((Number) (i)).intValue())._write_Seq(_io__raw_userEntries);
            }
            this._io.seek(_pos);
        }
    }

    public void _checkUserEntries() {
        if (ofs() > 0) {
            if (this.userEntries.size() != qtyEntries())
                throw new ConsistencyError("user_entries", this.userEntries.size(), qtyEntries());
            for (int i = 0; i < this.userEntries.size(); i++) {
                if (!Objects.equals(this.userEntries.get(((Number) (i)).intValue())._root(), _root()))
                    throw new ConsistencyError("user_entries", this.userEntries.get(((Number) (i)).intValue())._root(), _root());
                if (!Objects.equals(this.userEntries.get(((Number) (i)).intValue())._parent(), this))
                    throw new ConsistencyError("user_entries", this.userEntries.get(((Number) (i)).intValue())._parent(), this);
            }
        }
    }
    private long ofs;
    private long entrySize;
    private long qtyEntries;
    private InstanceUserArray _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_userEntries;
    public long ofs() { return ofs; }
    public void setOfs(long _v) { ofs = _v; }
    public long entrySize() { return entrySize; }
    public void setEntrySize(long _v) { entrySize = _v; }
    public long qtyEntries() { return qtyEntries; }
    public void setQtyEntries(long _v) { qtyEntries = _v; }
    public InstanceUserArray _root() { return _root; }
    public void set_root(InstanceUserArray _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public List<byte[]> _raw_userEntries() { return _raw_userEntries; }
    public void set_raw_UserEntries(List<byte[]> _v) { _raw_userEntries = _v; }
}
