// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprIoPosBits extends KaitaiStruct {
    public static ExprIoPosBits fromFile(String fileName) throws IOException {
        return new ExprIoPosBits(new ByteBufferKaitaiStream(fileName));
    }

    public ExprIoPosBits(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoPosBits(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprIoPosBits(KaitaiStream _io, KaitaiStruct _parent, ExprIoPosBits _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readBitsIntBe(3);
        if (_io().pos() == 1) {
            this.bar = this._io.readBitsIntBe(5);
        }
        if (_io().pos() == 1) {
            this.baz = this._io.readBitsIntBe(1) != 0;
        }
        if (_io().pos() == 2) {
            this.qux = this._io.readBitsIntBe(7);
        }
    }

    public void _fetchInstances() {
        if (_io().pos() == 1) {
        }
        if (_io().pos() == 1) {
        }
        if (_io().pos() == 2) {
        }
    }
    private long foo;
    private Long bar;
    private Boolean baz;
    private Long qux;
    private ExprIoPosBits _root;
    private KaitaiStruct _parent;
    public long foo() { return foo; }
    public Long bar() { return bar; }
    public Boolean baz() { return baz; }
    public Long qux() { return qux; }
    public ExprIoPosBits _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
