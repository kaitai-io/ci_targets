// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class ValidShort extends KaitaiStruct.ReadWrite {
    public static ValidShort fromFile(String fileName) throws IOException {
        return new ValidShort(new ByteBufferKaitaiStream(fileName));
    }
    public ValidShort() {
        this(null, null, null);
    }

    public ValidShort(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidShort(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidShort(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidShort _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.magic1 = this._io.readBytes(6);
        if (!(Arrays.equals(this.magic1, new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, this.magic1, this._io, "/seq/0");
        }
        this.uint8 = this._io.readU1();
        if (!(this.uint8 == 255)) {
            throw new KaitaiStream.ValidationNotEqualError(255, this.uint8, this._io, "/seq/1");
        }
        this.sint8 = this._io.readS1();
        if (!(this.sint8 == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, this.sint8, this._io, "/seq/2");
        }
        this.magicUint = new String(this._io.readBytes(10), StandardCharsets.UTF_8);
        if (!(this.magicUint.equals("PACK-U-DEF"))) {
            throw new KaitaiStream.ValidationNotEqualError("PACK-U-DEF", this.magicUint, this._io, "/seq/3");
        }
        this.uint16 = this._io.readU2le();
        if (!(this.uint16 == 65535)) {
            throw new KaitaiStream.ValidationNotEqualError(65535, this.uint16, this._io, "/seq/4");
        }
        this.uint32 = this._io.readU4le();
        if (!(this.uint32 == 4294967295L)) {
            throw new KaitaiStream.ValidationNotEqualError(4294967295L, this.uint32, this._io, "/seq/5");
        }
        this.uint64 = this._io.readU8le();
        if (!(this.uint64 == 0xffffffffffffffffL)) {
            throw new KaitaiStream.ValidationNotEqualError(0xffffffffffffffffL, this.uint64, this._io, "/seq/6");
        }
        this.magicSint = new String(this._io.readBytes(10), StandardCharsets.UTF_8);
        if (!(this.magicSint.equals("PACK-S-DEF"))) {
            throw new KaitaiStream.ValidationNotEqualError("PACK-S-DEF", this.magicSint, this._io, "/seq/7");
        }
        this.sint16 = this._io.readS2le();
        if (!(this.sint16 == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, this.sint16, this._io, "/seq/8");
        }
        this.sint32 = this._io.readS4le();
        if (!(this.sint32 == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, this.sint32, this._io, "/seq/9");
        }
        this.sint64 = this._io.readS8le();
        if (!(this.sint64 == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, this.sint64, this._io, "/seq/10");
        }
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.magic1);
        this._io.writeU1(this.uint8);
        this._io.writeS1(this.sint8);
        this._io.writeBytes((this.magicUint).getBytes(Charset.forName("UTF-8")));
        this._io.writeU2le(this.uint16);
        this._io.writeU4le(this.uint32);
        this._io.writeU8le(this.uint64);
        this._io.writeBytes((this.magicSint).getBytes(Charset.forName("UTF-8")));
        this._io.writeS2le(this.sint16);
        this._io.writeS4le(this.sint32);
        this._io.writeS8le(this.sint64);
    }

    public void _check() {
        if (this.magic1.length != 6)
            throw new ConsistencyError("magic1", 6, this.magic1.length);
        if (!(Arrays.equals(this.magic1, new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, this.magic1, null, "/seq/0");
        }
        if (!(this.uint8 == 255)) {
            throw new KaitaiStream.ValidationNotEqualError(255, this.uint8, null, "/seq/1");
        }
        if (!(this.sint8 == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, this.sint8, null, "/seq/2");
        }
        if ((this.magicUint).getBytes(Charset.forName("UTF-8")).length != 10)
            throw new ConsistencyError("magic_uint", 10, (this.magicUint).getBytes(Charset.forName("UTF-8")).length);
        if (!(this.magicUint.equals("PACK-U-DEF"))) {
            throw new KaitaiStream.ValidationNotEqualError("PACK-U-DEF", this.magicUint, null, "/seq/3");
        }
        if (!(this.uint16 == 65535)) {
            throw new KaitaiStream.ValidationNotEqualError(65535, this.uint16, null, "/seq/4");
        }
        if (!(this.uint32 == 4294967295L)) {
            throw new KaitaiStream.ValidationNotEqualError(4294967295L, this.uint32, null, "/seq/5");
        }
        if (!(this.uint64 == 0xffffffffffffffffL)) {
            throw new KaitaiStream.ValidationNotEqualError(0xffffffffffffffffL, this.uint64, null, "/seq/6");
        }
        if ((this.magicSint).getBytes(Charset.forName("UTF-8")).length != 10)
            throw new ConsistencyError("magic_sint", 10, (this.magicSint).getBytes(Charset.forName("UTF-8")).length);
        if (!(this.magicSint.equals("PACK-S-DEF"))) {
            throw new KaitaiStream.ValidationNotEqualError("PACK-S-DEF", this.magicSint, null, "/seq/7");
        }
        if (!(this.sint16 == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, this.sint16, null, "/seq/8");
        }
        if (!(this.sint32 == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, this.sint32, null, "/seq/9");
        }
        if (!(this.sint64 == -1)) {
            throw new KaitaiStream.ValidationNotEqualError(-1, this.sint64, null, "/seq/10");
        }
        _dirty = false;
    }
    public byte[] magic1() { return magic1; }
    public void setMagic1(byte[] _v) { _dirty = true; magic1 = _v; }
    public int uint8() { return uint8; }
    public void setUint8(int _v) { _dirty = true; uint8 = _v; }
    public byte sint8() { return sint8; }
    public void setSint8(byte _v) { _dirty = true; sint8 = _v; }
    public String magicUint() { return magicUint; }
    public void setMagicUint(String _v) { _dirty = true; magicUint = _v; }
    public int uint16() { return uint16; }
    public void setUint16(int _v) { _dirty = true; uint16 = _v; }
    public long uint32() { return uint32; }
    public void setUint32(long _v) { _dirty = true; uint32 = _v; }
    public long uint64() { return uint64; }
    public void setUint64(long _v) { _dirty = true; uint64 = _v; }
    public String magicSint() { return magicSint; }
    public void setMagicSint(String _v) { _dirty = true; magicSint = _v; }
    public short sint16() { return sint16; }
    public void setSint16(short _v) { _dirty = true; sint16 = _v; }
    public int sint32() { return sint32; }
    public void setSint32(int _v) { _dirty = true; sint32 = _v; }
    public long sint64() { return sint64; }
    public void setSint64(long _v) { _dirty = true; sint64 = _v; }
    public ValidShort _root() { return _root; }
    public void set_root(ValidShort _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
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
    private ValidShort _root;
    private KaitaiStruct.ReadWrite _parent;
}
