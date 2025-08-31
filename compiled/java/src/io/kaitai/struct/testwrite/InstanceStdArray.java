// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;

public class InstanceStdArray extends KaitaiStruct.ReadWrite {
    public static InstanceStdArray fromFile(String fileName) throws IOException {
        return new InstanceStdArray(new ByteBufferKaitaiStream(fileName));
    }
    public InstanceStdArray() {
        this(null, null, null);
    }

    public InstanceStdArray(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceStdArray(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public InstanceStdArray(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, InstanceStdArray _root) {
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
        entries();
        for (int i = 0; i < this.entries.size(); i++) {
        }
    }

    public void _write_Seq() {
        _writeEntries = _toWriteEntries;
        this._io.writeU4le(this.ofs);
        this._io.writeU4le(this.entrySize);
        this._io.writeU4le(this.qtyEntries);
    }

    public void _check() {
    }
    private List<byte[]> entries;
    private boolean _writeEntries = false;
    private boolean _toWriteEntries = true;
    public List<byte[]> entries() {
        if (_writeEntries)
            _writeEntries();
        if (this.entries != null)
            return this.entries;
        long _pos = this._io.pos();
        this._io.seek(ofs());
        this.entries = new ArrayList<byte[]>();
        for (int i = 0; i < qtyEntries(); i++) {
            this.entries.add(this._io.readBytes(entrySize()));
        }
        this._io.seek(_pos);
        return this.entries;
    }
    public void setEntries(List<byte[]> _v) { entries = _v; }
    public void setEntries_ToWrite(boolean _v) { _toWriteEntries = _v; }

    public void _writeEntries() {
        _writeEntries = false;
        long _pos = this._io.pos();
        this._io.seek(ofs());
        for (int i = 0; i < this.entries.size(); i++) {
            this._io.writeBytes(this.entries.get(((Number) (i)).intValue()));
        }
        this._io.seek(_pos);
    }

    public void _checkEntries() {
        if (this.entries.size() != qtyEntries())
            throw new ConsistencyError("entries", this.entries.size(), qtyEntries());
        for (int i = 0; i < this.entries.size(); i++) {
            if (this.entries.get(((Number) (i)).intValue()).length != entrySize())
                throw new ConsistencyError("entries", this.entries.get(((Number) (i)).intValue()).length, entrySize());
        }
    }
    private long ofs;
    private long entrySize;
    private long qtyEntries;
    private InstanceStdArray _root;
    private KaitaiStruct.ReadWrite _parent;
    public long ofs() { return ofs; }
    public void setOfs(long _v) { ofs = _v; }
    public long entrySize() { return entrySize; }
    public void setEntrySize(long _v) { entrySize = _v; }
    public long qtyEntries() { return qtyEntries; }
    public void setQtyEntries(long _v) { qtyEntries = _v; }
    public InstanceStdArray _root() { return _root; }
    public void set_root(InstanceStdArray _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
