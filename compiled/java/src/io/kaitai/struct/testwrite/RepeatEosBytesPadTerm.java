// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatEosBytesPadTerm extends KaitaiStruct.ReadWrite {
    public static RepeatEosBytesPadTerm fromFile(String fileName) throws IOException {
        return new RepeatEosBytesPadTerm(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatEosBytesPadTerm() {
        this(null, null, null);
    }

    public RepeatEosBytesPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosBytesPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosBytesPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatEosBytesPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.records = new ArrayList<byte[]>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.records.add(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(5), (byte) 170), (byte) 85, true));
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
            this._io.writeBytesLimit(this.records.get(((Number) (i)).intValue()), 5, (byte) 170, (byte) 170);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("records", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.records.size(); i++) {
            if (this.records.get(((Number) (i)).intValue()).length > 5)
                throw new ConsistencyError("records", 5, this.records.get(((Number) (i)).intValue()).length);
            if ( ((KaitaiStream.byteArrayIndexOf(this.records.get(((Number) (i)).intValue()), ((byte) 85)) != -1) && (KaitaiStream.byteArrayIndexOf(this.records.get(((Number) (i)).intValue()), ((byte) 85)) != this.records.get(((Number) (i)).intValue()).length - 1)) )
                throw new ConsistencyError("records", this.records.get(((Number) (i)).intValue()).length - 1, KaitaiStream.byteArrayIndexOf(this.records.get(((Number) (i)).intValue()), ((byte) 85)));
            if (KaitaiStream.byteArrayIndexOf(this.records.get(((Number) (i)).intValue()), ((byte) 85)) == -1) {
                if ( ((this.records.get(((Number) (i)).intValue()).length != 0) && ((this.records.get(((Number) (i)).intValue())[((Number) (this.records.get(((Number) (i)).intValue()).length - 1)).intValue()] & 0xff) == 170)) )
                    throw new ConsistencyError("records", 170, (this.records.get(((Number) (i)).intValue())[((Number) (this.records.get(((Number) (i)).intValue()).length - 1)).intValue()] & 0xff));
            }
        }
        _dirty = false;
    }
    private List<byte[]> records;
    private RepeatEosBytesPadTerm _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<byte[]> records() { return records; }
    public void setRecords(List<byte[]> _v) { _dirty = true; records = _v; }
    public RepeatEosBytesPadTerm _root() { return _root; }
    public void set_root(RepeatEosBytesPadTerm _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
