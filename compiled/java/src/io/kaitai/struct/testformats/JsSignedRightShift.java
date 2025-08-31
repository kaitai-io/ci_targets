// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class JsSignedRightShift extends KaitaiStruct {
    public static JsSignedRightShift fromFile(String fileName) throws IOException {
        return new JsSignedRightShift(new ByteBufferKaitaiStream(fileName));
    }

    public JsSignedRightShift(KaitaiStream _io) {
        this(_io, null, null);
    }

    public JsSignedRightShift(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public JsSignedRightShift(KaitaiStream _io, KaitaiStruct _parent, JsSignedRightShift _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
    }
    private Integer shouldBe40000000;
    public Integer shouldBe40000000() {
        if (this.shouldBe40000000 != null)
            return this.shouldBe40000000;
        this.shouldBe40000000 = ((Number) (2147483648L >> 1)).intValue();
        return this.shouldBe40000000;
    }
    private Integer shouldBeA00000;
    public Integer shouldBeA00000() {
        if (this.shouldBeA00000 != null)
            return this.shouldBeA00000;
        this.shouldBeA00000 = ((Number) (2684354560L >> 8)).intValue();
        return this.shouldBeA00000;
    }
    private JsSignedRightShift _root;
    private KaitaiStruct _parent;
    public JsSignedRightShift _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
