// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;

public class ValidOptionalId extends KaitaiStruct {
    public static ValidOptionalId fromFile(String fileName) throws IOException {
        return new ValidOptionalId(new ByteBufferKaitaiStream(fileName));
    }

    public ValidOptionalId(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidOptionalId(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidOptionalId(KaitaiStream _io, KaitaiStruct _parent, ValidOptionalId _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._unnamed0 = this._io.readBytes(6);
        if (!(Arrays.equals(this._unnamed0, new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, this._unnamed0, this._io, "/seq/0");
        }
        this._unnamed1 = this._io.readU1();
        if (!(this._unnamed1 == 255)) {
            throw new KaitaiStream.ValidationNotEqualError(255, this._unnamed1, this._io, "/seq/1");
        }
        this._unnamed2 = this._io.readS1();
        {
            byte _it = this._unnamed2;
            if (!(_it == -1)) {
                throw new KaitaiStream.ValidationExprError(this._unnamed2, this._io, "/seq/2");
            }
        }
    }

    public void _fetchInstances() {
    }
    public byte[] _unnamed0() { return _unnamed0; }
    public int _unnamed1() { return _unnamed1; }
    public byte _unnamed2() { return _unnamed2; }
    public ValidOptionalId _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte[] _unnamed0;
    private int _unnamed1;
    private byte _unnamed2;
    private ValidOptionalId _root;
    private KaitaiStruct _parent;
}
