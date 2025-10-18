// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class ProcessRepeatBytes extends KaitaiStruct.ReadWrite {
    public static ProcessRepeatBytes fromFile(String fileName) throws IOException {
        return new ProcessRepeatBytes(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessRepeatBytes() {
        this(null, null, null);
    }

    public ProcessRepeatBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRepeatBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessRepeatBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessRepeatBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_bufs = new ArrayList<byte[]>();
        this.bufs = new ArrayList<byte[]>();
        for (int i = 0; i < 2; i++) {
            this._raw_bufs.add(this._io.readBytes(5));
            this.bufs.add(KaitaiStream.processXor(this._raw_bufs.get(i), ((byte) 158)));
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.bufs.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._raw_bufs = new ArrayList<byte[]>();
        for (int i = 0; i < this.bufs.size(); i++) {
            this._raw_bufs.add(KaitaiStream.processXor(this.bufs.get(((Number) (i)).intValue()), ((Number) (158)).byteValue()));
            if (this._raw_bufs.get(((Number) (i)).intValue()).length != 5)
                throw new ConsistencyError("bufs", 5, this._raw_bufs.get(((Number) (i)).intValue()).length);
            this._io.writeBytes(this._raw_bufs.get(((Number) (i)).intValue()));
        }
    }

    public void _check() {
        if (this.bufs.size() != 2)
            throw new ConsistencyError("bufs", 2, this.bufs.size());
        for (int i = 0; i < this.bufs.size(); i++) {
        }
        _dirty = false;
    }
    public List<byte[]> bufs() { return bufs; }
    public void setBufs(List<byte[]> _v) { _dirty = true; bufs = _v; }
    public ProcessRepeatBytes _root() { return _root; }
    public void set_root(ProcessRepeatBytes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public List<byte[]> _raw_bufs() { return _raw_bufs; }
    public void set_raw_Bufs(List<byte[]> _v) { _dirty = true; _raw_bufs = _v; }
    private List<byte[]> bufs;
    private ProcessRepeatBytes _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_bufs;
}
