// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class ProcessRepeatBytes extends KaitaiStruct {
    public static ProcessRepeatBytes fromFile(String fileName) throws IOException {
        return new ProcessRepeatBytes(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessRepeatBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRepeatBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessRepeatBytes(KaitaiStream _io, KaitaiStruct _parent, ProcessRepeatBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_bufs = new ArrayList<byte[]>(((Number) (2)).intValue());
        bufs = new ArrayList<byte[]>(((Number) (2)).intValue());
        for (int i = 0; i < 2; i++) {
            this._raw_bufs.add(this._io.readBytes(5));
            this.bufs.add(KaitaiStream.processXor(_raw_bufs.get(_raw_bufs.size() - 1), 158));
        }
    }
    private ArrayList<byte[]> bufs;
    private ProcessRepeatBytes _root;
    private KaitaiStruct _parent;
    private ArrayList<byte[]> _raw_bufs;
    public ArrayList<byte[]> bufs() { return bufs; }
    public ProcessRepeatBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public ArrayList<byte[]> _raw_bufs() { return _raw_bufs; }
}
