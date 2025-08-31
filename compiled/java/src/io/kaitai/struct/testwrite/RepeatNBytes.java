// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatNBytes extends KaitaiStruct.ReadWrite {
    public static RepeatNBytes fromFile(String fileName) throws IOException {
        return new RepeatNBytes(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatNBytes() {
        this(null, null, null);
    }

    public RepeatNBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatNBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatNBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.records = new ArrayList<byte[]>();
        for (int i = 0; i < 3; i++) {
            this.records.add(this._io.readBytes(5));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }

    public void _write_Seq() {
        for (int i = 0; i < this.records.size(); i++) {
            this._io.writeBytes(this.records.get(((Number) (i)).intValue()));
        }
    }

    public void _check() {
        if (this.records.size() != 3)
            throw new ConsistencyError("records", this.records.size(), 3);
        for (int i = 0; i < this.records.size(); i++) {
            if (this.records.get(((Number) (i)).intValue()).length != 5)
                throw new ConsistencyError("records", this.records.get(((Number) (i)).intValue()).length, 5);
        }
    }
    private List<byte[]> records;
    private RepeatNBytes _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<byte[]> records() { return records; }
    public void setRecords(List<byte[]> _v) { records = _v; }
    public RepeatNBytes _root() { return _root; }
    public void set_root(RepeatNBytes _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
