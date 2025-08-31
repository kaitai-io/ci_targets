// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class JsSignedRightShift extends KaitaiStruct.ReadWrite {
    public static JsSignedRightShift fromFile(String fileName) throws IOException {
        return new JsSignedRightShift(new ByteBufferKaitaiStream(fileName));
    }
    public JsSignedRightShift() {
        this(null, null, null);
    }

    public JsSignedRightShift(KaitaiStream _io) {
        this(_io, null, null);
    }

    public JsSignedRightShift(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public JsSignedRightShift(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, JsSignedRightShift _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
    }

    public void _check() {
    }
    private Integer shouldBe40000000;
    public Integer shouldBe40000000() {
        if (this.shouldBe40000000 != null)
            return this.shouldBe40000000;
        this.shouldBe40000000 = ((Number) (2147483648L >> 1)).intValue();
        return this.shouldBe40000000;
    }
    public void _invalidateShouldBe40000000() { this.shouldBe40000000 = null; }
    private Integer shouldBeA00000;
    public Integer shouldBeA00000() {
        if (this.shouldBeA00000 != null)
            return this.shouldBeA00000;
        this.shouldBeA00000 = ((Number) (2684354560L >> 8)).intValue();
        return this.shouldBeA00000;
    }
    public void _invalidateShouldBeA00000() { this.shouldBeA00000 = null; }
    private JsSignedRightShift _root;
    private KaitaiStruct.ReadWrite _parent;
    public JsSignedRightShift _root() { return _root; }
    public void set_root(JsSignedRightShift _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
