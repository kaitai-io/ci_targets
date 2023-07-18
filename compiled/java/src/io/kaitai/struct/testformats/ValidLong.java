// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;
import java.nio.charset.StandardCharsets;

public class ValidLong extends KaitaiStruct {
    public static ValidLong fromFile(String fileName) throws IOException {
        return new ValidLong(new ByteBufferKaitaiStream(fileName));
    }

    public ValidLong(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidLong(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidLong(KaitaiStream _io, KaitaiStruct _parent, ValidLong _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.magic1 = this._io.readBytes(6);
        if (!(Arrays.equals(magic1(), new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, magic1(), _io(), "/seq/0");
        }
        this.uint8 = this._io.readU1();
        if (!(uint8() == 255)) {
            throw new KaitaiStream.ValidationNotEqualError(255, uint8(), _io(), "/seq/1");
        }
        this.sint8 = this._io.readS1();
        if (!(sint8() == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, sint8(), _io(), "/seq/2");
        }
        this.magicUint = new String(this._io.readBytes(10), StandardCharsets.UTF_8);
        if (!(magicUint().equals("PACK-U-DEF"))) {
            throw new KaitaiStream.ValidationNotEqualError("PACK-U-DEF", magicUint(), _io(), "/seq/3");
        }
        this.uint16 = this._io.readU2le();
        if (!(uint16() == 65535)) {
            throw new KaitaiStream.ValidationNotEqualError(65535, uint16(), _io(), "/seq/4");
        }
        this.uint32 = this._io.readU4le();
        if (!(uint32() == 4294967295L)) {
            throw new KaitaiStream.ValidationNotEqualError(4294967295L, uint32(), _io(), "/seq/5");
        }
        this.uint64 = this._io.readU8le();
        if (!(uint64() == 0xffffffffffffffffL)) {
            throw new KaitaiStream.ValidationNotEqualError(0xffffffffffffffffL, uint64(), _io(), "/seq/6");
        }
        this.magicSint = new String(this._io.readBytes(10), StandardCharsets.UTF_8);
        if (!(magicSint().equals("PACK-S-DEF"))) {
            throw new KaitaiStream.ValidationNotEqualError("PACK-S-DEF", magicSint(), _io(), "/seq/7");
        }
        this.sint16 = this._io.readS2le();
        if (!(sint16() == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, sint16(), _io(), "/seq/8");
        }
        this.sint32 = this._io.readS4le();
        if (!(sint32() == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, sint32(), _io(), "/seq/9");
        }
        this.sint64 = this._io.readS8le();
        if (!(sint64() == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, sint64(), _io(), "/seq/10");
        }
    }
    private byte[] magic1;
    private int uint8;
    private byte sint8;
    private String magicUint;
    private int uint16;
    private long uint32;
    private long uint64;
    private String magicSint;
    private short sint16;
    private int sint32;
    private long sint64;
    private ValidLong _root;
    private KaitaiStruct _parent;
    public byte[] magic1() { return magic1; }
    public int uint8() { return uint8; }
    public byte sint8() { return sint8; }
    public String magicUint() { return magicUint; }
    public int uint16() { return uint16; }
    public long uint32() { return uint32; }
    public long uint64() { return uint64; }
    public String magicSint() { return magicSint; }
    public short sint16() { return sint16; }
    public int sint32() { return sint32; }
    public long sint64() { return sint64; }
    public ValidLong _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
