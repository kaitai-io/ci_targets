// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatEosBytesPad extends KaitaiStruct.ReadWrite {
    public static RepeatEosBytesPad fromFile(String fileName) throws IOException {
        return new RepeatEosBytesPad(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatEosBytesPad() {
        this(null, null, null);
    }

    public RepeatEosBytesPad(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosBytesPad(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosBytesPad(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatEosBytesPad _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.records = new ArrayList<byte[]>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.records.add(KaitaiStream.bytesStripRight(this._io.readBytes(5), (byte) 170));
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }

    public void _write_Seq() {
        for (int i = 0; i < this.records.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("records", this._io.size() - this._io.pos(), 0);
            this._io.writeBytesLimit(this.records.get(((Number) (i)).intValue()), 5, (byte) 170, (byte) 170);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("records", this._io.size() - this._io.pos(), 0);
    }

    public void _check() {
        for (int i = 0; i < this.records.size(); i++) {
            if (this.records.get(((Number) (i)).intValue()).length > 5)
                throw new ConsistencyError("records", this.records.get(((Number) (i)).intValue()).length, 5);
            if ( ((this.records.get(((Number) (i)).intValue()).length != 0) && ((this.records.get(((Number) (i)).intValue())[((Number) (this.records.get(((Number) (i)).intValue()).length - 1)).intValue()] & 0xff) == 170)) )
                throw new ConsistencyError("records", (this.records.get(((Number) (i)).intValue())[((Number) (this.records.get(((Number) (i)).intValue()).length - 1)).intValue()] & 0xff), 170);
        }
    }
    private List<byte[]> records;
    private RepeatEosBytesPad _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<byte[]> records() { return records; }
    public void setRecords(List<byte[]> _v) { records = _v; }
    public RepeatEosBytesPad _root() { return _root; }
    public void set_root(RepeatEosBytesPad _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
