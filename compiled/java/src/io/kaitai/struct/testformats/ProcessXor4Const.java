// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ProcessXor4Const extends KaitaiStruct {
    public static ProcessXor4Const fromFile(String fileName) throws IOException {
        return new ProcessXor4Const(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessXor4Const(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessXor4Const(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessXor4Const(KaitaiStream _io, KaitaiStruct _parent, ProcessXor4Const _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.key = this._io.readBytes(4);
        this._raw_buf = this._io.readBytesFull();
        this.buf = KaitaiStream.processXor(_raw_buf, new byte[] { -20, -69, -93, 20 });
    }
    private byte[] key;
    private byte[] buf;
    private ProcessXor4Const _root;
    private KaitaiStruct _parent;
    private byte[] _raw_buf;
    public byte[] key() { return key; }
    public byte[] buf() { return buf; }
    public ProcessXor4Const _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_buf() { return _raw_buf; }
}
