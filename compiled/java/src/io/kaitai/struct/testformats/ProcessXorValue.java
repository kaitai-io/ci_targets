// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ProcessXorValue extends KaitaiStruct {
    public static ProcessXorValue fromFile(String fileName) throws IOException {
        return new ProcessXorValue(new KaitaiStream(fileName));
    }

    public ProcessXorValue(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessXorValue(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessXorValue(KaitaiStream _io, KaitaiStruct _parent, ProcessXorValue _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.key = this._io.readU1();
        this._raw_buf = this._io.readBytesFull();
        this.buf = KaitaiStream.processXor(this._raw_buf, key());
    }
    private int key;
    private byte[] buf;
    private ProcessXorValue _root;
    private KaitaiStruct _parent;
    private byte[] _raw_buf;
    public int key() { return key; }
    public byte[] buf() { return buf; }
    public ProcessXorValue _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_buf() { return _raw_buf; }
}
