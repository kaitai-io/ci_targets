// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ProcessXorConst extends KaitaiStruct {
    public static ProcessXorConst fromFile(String fileName) throws IOException {
        return new ProcessXorConst(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessXorConst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessXorConst(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessXorConst(KaitaiStream _io, KaitaiStruct _parent, ProcessXorConst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.key = this._io.readU1();
        this._raw_buf = this._io.readBytesFull();
        this.buf = KaitaiStream.processXor(_raw_buf, 255);
    }
    private int key;
    private byte[] buf;
    private ProcessXorConst _root;
    private KaitaiStruct _parent;
    private byte[] _raw_buf;
    public int key() { return key; }
    public byte[] buf() { return buf; }
    public ProcessXorConst _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_buf() { return _raw_buf; }
}
