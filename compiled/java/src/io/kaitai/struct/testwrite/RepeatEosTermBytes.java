// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatEosTermBytes extends KaitaiStruct.ReadWrite {
    public static RepeatEosTermBytes fromFile(String fileName) throws IOException {
        return new RepeatEosTermBytes(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatEosTermBytes() {
        this(null, null, null);
    }

    public RepeatEosTermBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosTermBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosTermBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatEosTermBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.records = new ArrayList<byte[]>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.records.add(this._io.readBytesTerm((byte) 178, true, true, true));
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.records.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("records", 0, this._io.size() - this._io.pos());
            this._io.writeBytes(this.records.get(((Number) (i)).intValue()));
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("records", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.records.size(); i++) {
            if (this.records.get(((Number) (i)).intValue()).length == 0)
                throw new ConsistencyError("records", 0, this.records.get(((Number) (i)).intValue()).length);
            if (KaitaiStream.byteArrayIndexOf(this.records.get(((Number) (i)).intValue()), ((byte) 178)) != this.records.get(((Number) (i)).intValue()).length - 1)
                throw new ConsistencyError("records", this.records.get(((Number) (i)).intValue()).length - 1, KaitaiStream.byteArrayIndexOf(this.records.get(((Number) (i)).intValue()), ((byte) 178)));
        }
        _dirty = false;
    }
    public List<byte[]> records() { return records; }
    public void setRecords(List<byte[]> _v) { _dirty = true; records = _v; }
    public RepeatEosTermBytes _root() { return _root; }
    public void set_root(RepeatEosTermBytes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<byte[]> records;
    private RepeatEosTermBytes _root;
    private KaitaiStruct.ReadWrite _parent;
}
