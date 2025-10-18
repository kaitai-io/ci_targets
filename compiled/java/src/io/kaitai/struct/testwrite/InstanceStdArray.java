// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.List;
import java.util.ArrayList;

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
        _dirty = false;
    }

    public void _fetchInstances() {
        entries();
        if (this.entries != null) {
            for (int i = 0; i < this.entries.size(); i++) {
            }
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteEntries = _enabledEntries;
        this._io.writeU4le(this.ofs);
        this._io.writeU4le(this.entrySize);
        this._io.writeU4le(this.qtyEntries);
    }

    public void _check() {
        if (_enabledEntries) {
            if (this.entries.size() != qtyEntries())
                throw new ConsistencyError("entries", qtyEntries(), this.entries.size());
            for (int i = 0; i < this.entries.size(); i++) {
                if (this.entries.get(((Number) (i)).intValue()).length != entrySize())
                    throw new ConsistencyError("entries", entrySize(), this.entries.get(((Number) (i)).intValue()).length);
            }
        }
        _dirty = false;
    }
    public List<byte[]> entries() {
        if (_shouldWriteEntries)
            _writeEntries();
        if (this.entries != null)
            return this.entries;
        if (!_enabledEntries)
            return null;
        long _pos = this._io.pos();
        this._io.seek(ofs());
        this.entries = new ArrayList<byte[]>();
        for (int i = 0; i < qtyEntries(); i++) {
            this.entries.add(this._io.readBytes(entrySize()));
        }
        this._io.seek(_pos);
        return this.entries;
    }
    public void setEntries(List<byte[]> _v) { _dirty = true; entries = _v; }
    public void setEntries_Enabled(boolean _v) { _dirty = true; _enabledEntries = _v; }

    private void _writeEntries() {
        _shouldWriteEntries = false;
        long _pos = this._io.pos();
        this._io.seek(ofs());
        for (int i = 0; i < this.entries.size(); i++) {
            this._io.writeBytes(this.entries.get(((Number) (i)).intValue()));
        }
        this._io.seek(_pos);
    }
    public long ofs() { return ofs; }
    public void setOfs(long _v) { _dirty = true; ofs = _v; }
    public long entrySize() { return entrySize; }
    public void setEntrySize(long _v) { _dirty = true; entrySize = _v; }
    public long qtyEntries() { return qtyEntries; }
    public void setQtyEntries(long _v) { _dirty = true; qtyEntries = _v; }
    public InstanceStdArray _root() { return _root; }
    public void set_root(InstanceStdArray _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<byte[]> entries;
    private boolean _shouldWriteEntries = false;
    private boolean _enabledEntries = true;
    private long ofs;
    private long entrySize;
    private long qtyEntries;
    private InstanceStdArray _root;
    private KaitaiStruct.ReadWrite _parent;
}
