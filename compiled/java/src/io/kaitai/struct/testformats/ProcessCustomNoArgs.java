// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ProcessCustomNoArgs extends KaitaiStruct {
    public static ProcessCustomNoArgs fromFile(String fileName) throws IOException {
        return new ProcessCustomNoArgs(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessCustomNoArgs(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessCustomNoArgs(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessCustomNoArgs(KaitaiStream _io, KaitaiStruct _parent, ProcessCustomNoArgs _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_buf = this._io.readBytes(5);
        CustomFxNoArgs _process__raw_buf = new CustomFxNoArgs();
        this.buf = _process__raw_buf.decode(this._raw_buf);
    }
    private byte[] buf;
    private ProcessCustomNoArgs _root;
    private KaitaiStruct _parent;
    private byte[] _raw_buf;
    public byte[] buf() { return buf; }
    public ProcessCustomNoArgs _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_buf() { return _raw_buf; }
}
