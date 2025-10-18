// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatUntilBytesPad extends KaitaiStruct.ReadWrite {
    public static RepeatUntilBytesPad fromFile(String fileName) throws IOException {
        return new RepeatUntilBytesPad(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatUntilBytesPad() {
        this(null, null, null);
    }

    public RepeatUntilBytesPad(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilBytesPad(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilBytesPad(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatUntilBytesPad _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.records = new ArrayList<byte[]>();
        {
            byte[] _it;
            int i = 0;
            do {
                _it = KaitaiStream.bytesStripRight(this._io.readBytes(5), (byte) 170);
                this.records.add(_it);
                i++;
            } while (!(_it.length == 5));
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
        if (this.records.size() == 0)
            throw new ConsistencyError("records", 0, this.records.size());
        for (int i = 0; i < this.records.size(); i++) {
            if (this.records.get(((Number) (i)).intValue()).length > 5)
                throw new ConsistencyError("records", 5, this.records.get(((Number) (i)).intValue()).length);
            if ( ((this.records.get(((Number) (i)).intValue()).length != 0) && ((this.records.get(((Number) (i)).intValue())[((Number) (this.records.get(((Number) (i)).intValue()).length - 1)).intValue()] & 0xff) == 170)) )
                throw new ConsistencyError("records", 170, (this.records.get(((Number) (i)).intValue())[((Number) (this.records.get(((Number) (i)).intValue()).length - 1)).intValue()] & 0xff));
            {
                byte[] _it = this.records.get(((Number) (i)).intValue());
                if ((_it.length == 5) != (i == this.records.size() - 1))
                    throw new ConsistencyError("records", i == this.records.size() - 1, _it.length == 5);
            }
        }
        _dirty = false;
    }
    public List<byte[]> records() { return records; }
    public void setRecords(List<byte[]> _v) { _dirty = true; records = _v; }
    public RepeatUntilBytesPad _root() { return _root; }
    public void set_root(RepeatUntilBytesPad _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<byte[]> records;
    private RepeatUntilBytesPad _root;
    private KaitaiStruct.ReadWrite _parent;
}
