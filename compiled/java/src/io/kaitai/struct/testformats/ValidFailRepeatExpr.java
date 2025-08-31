// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ValidFailRepeatExpr extends KaitaiStruct {
    public static ValidFailRepeatExpr fromFile(String fileName) throws IOException {
        return new ValidFailRepeatExpr(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRepeatExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatExpr(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatExpr(KaitaiStream _io, KaitaiStruct _parent, ValidFailRepeatExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = new ArrayList<byte[]>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.foo.add(this._io.readBytes(4));
                {
                    byte[] _it = this.foo.get(((Number) (i)).intValue());
                    if (!(!Arrays.equals(_it, new byte[] { 0, 18, 52, 86 }))) {
                        throw new KaitaiStream.ValidationExprError(this.foo.get(((Number) (i)).intValue()), this._io, "/seq/0");
                    }
                }
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.foo.size(); i++) {
        }
    }
    private List<byte[]> foo;
    private ValidFailRepeatExpr _root;
    private KaitaiStruct _parent;
    public List<byte[]> foo() { return foo; }
    public ValidFailRepeatExpr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
