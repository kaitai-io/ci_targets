// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatNBytesPad extends KaitaiStruct.ReadWrite {
    public static RepeatNBytesPad fromFile(String fileName) throws IOException {
        return new RepeatNBytesPad(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatNBytesPad() {
        this(null, null, null);
    }

    public RepeatNBytesPad(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNBytesPad(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatNBytesPad(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatNBytesPad _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.records = new ArrayList<byte[]>();
        for (int i = 0; i < 3; i++) {
            this.records.add(KaitaiStream.bytesStripRight(this._io.readBytes(5), (byte) 170));
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
            this._io.writeBytesLimit(this.records.get(((Number) (i)).intValue()), 5, (byte) 170, (byte) 170);
        }
    }

    public void _check() {
        if (this.records.size() != 3)
            throw new ConsistencyError("records", 3, this.records.size());
        for (int i = 0; i < this.records.size(); i++) {
            if (this.records.get(((Number) (i)).intValue()).length > 5)
                throw new ConsistencyError("records", 5, this.records.get(((Number) (i)).intValue()).length);
            if ( ((this.records.get(((Number) (i)).intValue()).length != 0) && ((this.records.get(((Number) (i)).intValue())[((Number) (this.records.get(((Number) (i)).intValue()).length - 1)).intValue()] & 0xff) == 170)) )
                throw new ConsistencyError("records", 170, (this.records.get(((Number) (i)).intValue())[((Number) (this.records.get(((Number) (i)).intValue()).length - 1)).intValue()] & 0xff));
        }
        _dirty = false;
    }
    public List<byte[]> records() { return records; }
    public void setRecords(List<byte[]> _v) { _dirty = true; records = _v; }
    public RepeatNBytesPad _root() { return _root; }
    public void set_root(RepeatNBytesPad _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<byte[]> records;
    private RepeatNBytesPad _root;
    private KaitaiStruct.ReadWrite _parent;
}
