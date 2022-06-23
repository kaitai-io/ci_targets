// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprBytesNonLiteral extends KaitaiStruct {
    public static ExprBytesNonLiteral fromFile(String fileName) throws IOException {
        return new ExprBytesNonLiteral(new ByteBufferKaitaiStream(fileName));
    }

    public ExprBytesNonLiteral(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprBytesNonLiteral(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprBytesNonLiteral(KaitaiStream _io, KaitaiStruct _parent, ExprBytesNonLiteral _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
        this.two = this._io.readU1();
    }
    private byte[] calcBytes;
    public byte[] calcBytes() {
        if (this.calcBytes != null)
            return this.calcBytes;
        this.calcBytes = new byte[] { one(), two() };
        return this.calcBytes;
    }
    private int one;
    private int two;
    private ExprBytesNonLiteral _root;
    private KaitaiStruct _parent;
    public int one() { return one; }
    public int two() { return two; }
    public ExprBytesNonLiteral _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
