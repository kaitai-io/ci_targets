// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;
import io.kaitai.struct.ConsistencyError;

public class Integers extends KaitaiStruct.ReadWrite {
    public static Integers fromFile(String fileName) throws IOException {
        return new Integers(new ByteBufferKaitaiStream(fileName));
    }
    public Integers() {
        this(null, null, null);
    }

    public Integers(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Integers(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Integers(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Integers _root) {
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
        this.sint8 = this._io.readS1();
        this.magicUint = this._io.readBytes(10);
        if (!(Arrays.equals(this.magicUint, new byte[] { 80, 65, 67, 75, 45, 85, 45, 68, 69, 70 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 85, 45, 68, 69, 70 }, this.magicUint, this._io, "/seq/3");
        }
        this.uint16 = this._io.readU2le();
        this.uint32 = this._io.readU4le();
        this.uint64 = this._io.readU8le();
        this.magicSint = this._io.readBytes(10);
        if (!(Arrays.equals(this.magicSint, new byte[] { 80, 65, 67, 75, 45, 83, 45, 68, 69, 70 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 83, 45, 68, 69, 70 }, this.magicSint, this._io, "/seq/7");
        }
        this.sint16 = this._io.readS2le();
        this.sint32 = this._io.readS4le();
        this.sint64 = this._io.readS8le();
        this.magicUintLe = this._io.readBytes(9);
        if (!(Arrays.equals(this.magicUintLe, new byte[] { 80, 65, 67, 75, 45, 85, 45, 76, 69 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 85, 45, 76, 69 }, this.magicUintLe, this._io, "/seq/11");
        }
        this.uint16le = this._io.readU2le();
        this.uint32le = this._io.readU4le();
        this.uint64le = this._io.readU8le();
        this.magicSintLe = this._io.readBytes(9);
        if (!(Arrays.equals(this.magicSintLe, new byte[] { 80, 65, 67, 75, 45, 83, 45, 76, 69 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 83, 45, 76, 69 }, this.magicSintLe, this._io, "/seq/15");
        }
        this.sint16le = this._io.readS2le();
        this.sint32le = this._io.readS4le();
        this.sint64le = this._io.readS8le();
        this.magicUintBe = this._io.readBytes(9);
        if (!(Arrays.equals(this.magicUintBe, new byte[] { 80, 65, 67, 75, 45, 85, 45, 66, 69 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 85, 45, 66, 69 }, this.magicUintBe, this._io, "/seq/19");
        }
        this.uint16be = this._io.readU2be();
        this.uint32be = this._io.readU4be();
        this.uint64be = this._io.readU8be();
        this.magicSintBe = this._io.readBytes(9);
        if (!(Arrays.equals(this.magicSintBe, new byte[] { 80, 65, 67, 75, 45, 83, 45, 66, 69 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 83, 45, 66, 69 }, this.magicSintBe, this._io, "/seq/23");
        }
        this.sint16be = this._io.readS2be();
        this.sint32be = this._io.readS4be();
        this.sint64be = this._io.readS8be();
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytes(this.magic1);
        this._io.writeU1(this.uint8);
        this._io.writeS1(this.sint8);
        this._io.writeBytes(this.magicUint);
        this._io.writeU2le(this.uint16);
        this._io.writeU4le(this.uint32);
        this._io.writeU8le(this.uint64);
        this._io.writeBytes(this.magicSint);
        this._io.writeS2le(this.sint16);
        this._io.writeS4le(this.sint32);
        this._io.writeS8le(this.sint64);
        this._io.writeBytes(this.magicUintLe);
        this._io.writeU2le(this.uint16le);
        this._io.writeU4le(this.uint32le);
        this._io.writeU8le(this.uint64le);
        this._io.writeBytes(this.magicSintLe);
        this._io.writeS2le(this.sint16le);
        this._io.writeS4le(this.sint32le);
        this._io.writeS8le(this.sint64le);
        this._io.writeBytes(this.magicUintBe);
        this._io.writeU2be(this.uint16be);
        this._io.writeU4be(this.uint32be);
        this._io.writeU8be(this.uint64be);
        this._io.writeBytes(this.magicSintBe);
        this._io.writeS2be(this.sint16be);
        this._io.writeS4be(this.sint32be);
        this._io.writeS8be(this.sint64be);
    }

    public void _check() {
        if (this.magic1.length != 6)
            throw new ConsistencyError("magic1", this.magic1.length, 6);
        if (!(Arrays.equals(this.magic1, new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, this.magic1, null, "/seq/0");
        }
        if (this.magicUint.length != 10)
            throw new ConsistencyError("magic_uint", this.magicUint.length, 10);
        if (!(Arrays.equals(this.magicUint, new byte[] { 80, 65, 67, 75, 45, 85, 45, 68, 69, 70 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 85, 45, 68, 69, 70 }, this.magicUint, null, "/seq/3");
        }
        if (this.magicSint.length != 10)
            throw new ConsistencyError("magic_sint", this.magicSint.length, 10);
        if (!(Arrays.equals(this.magicSint, new byte[] { 80, 65, 67, 75, 45, 83, 45, 68, 69, 70 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 83, 45, 68, 69, 70 }, this.magicSint, null, "/seq/7");
        }
        if (this.magicUintLe.length != 9)
            throw new ConsistencyError("magic_uint_le", this.magicUintLe.length, 9);
        if (!(Arrays.equals(this.magicUintLe, new byte[] { 80, 65, 67, 75, 45, 85, 45, 76, 69 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 85, 45, 76, 69 }, this.magicUintLe, null, "/seq/11");
        }
        if (this.magicSintLe.length != 9)
            throw new ConsistencyError("magic_sint_le", this.magicSintLe.length, 9);
        if (!(Arrays.equals(this.magicSintLe, new byte[] { 80, 65, 67, 75, 45, 83, 45, 76, 69 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 83, 45, 76, 69 }, this.magicSintLe, null, "/seq/15");
        }
        if (this.magicUintBe.length != 9)
            throw new ConsistencyError("magic_uint_be", this.magicUintBe.length, 9);
        if (!(Arrays.equals(this.magicUintBe, new byte[] { 80, 65, 67, 75, 45, 85, 45, 66, 69 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 85, 45, 66, 69 }, this.magicUintBe, null, "/seq/19");
        }
        if (this.magicSintBe.length != 9)
            throw new ConsistencyError("magic_sint_be", this.magicSintBe.length, 9);
        if (!(Arrays.equals(this.magicSintBe, new byte[] { 80, 65, 67, 75, 45, 83, 45, 66, 69 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 83, 45, 66, 69 }, this.magicSintBe, null, "/seq/23");
        }
    }
    private byte[] magic1;
    private int uint8;
    private byte sint8;
    private byte[] magicUint;
    private int uint16;
    private long uint32;
    private long uint64;
    private byte[] magicSint;
    private short sint16;
    private int sint32;
    private long sint64;
    private byte[] magicUintLe;
    private int uint16le;
    private long uint32le;
    private long uint64le;
    private byte[] magicSintLe;
    private short sint16le;
    private int sint32le;
    private long sint64le;
    private byte[] magicUintBe;
    private int uint16be;
    private long uint32be;
    private long uint64be;
    private byte[] magicSintBe;
    private short sint16be;
    private int sint32be;
    private long sint64be;
    private Integers _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] magic1() { return magic1; }
    public void setMagic1(byte[] _v) { magic1 = _v; }
    public int uint8() { return uint8; }
    public void setUint8(int _v) { uint8 = _v; }
    public byte sint8() { return sint8; }
    public void setSint8(byte _v) { sint8 = _v; }
    public byte[] magicUint() { return magicUint; }
    public void setMagicUint(byte[] _v) { magicUint = _v; }
    public int uint16() { return uint16; }
    public void setUint16(int _v) { uint16 = _v; }
    public long uint32() { return uint32; }
    public void setUint32(long _v) { uint32 = _v; }
    public long uint64() { return uint64; }
    public void setUint64(long _v) { uint64 = _v; }
    public byte[] magicSint() { return magicSint; }
    public void setMagicSint(byte[] _v) { magicSint = _v; }
    public short sint16() { return sint16; }
    public void setSint16(short _v) { sint16 = _v; }
    public int sint32() { return sint32; }
    public void setSint32(int _v) { sint32 = _v; }
    public long sint64() { return sint64; }
    public void setSint64(long _v) { sint64 = _v; }
    public byte[] magicUintLe() { return magicUintLe; }
    public void setMagicUintLe(byte[] _v) { magicUintLe = _v; }
    public int uint16le() { return uint16le; }
    public void setUint16le(int _v) { uint16le = _v; }
    public long uint32le() { return uint32le; }
    public void setUint32le(long _v) { uint32le = _v; }
    public long uint64le() { return uint64le; }
    public void setUint64le(long _v) { uint64le = _v; }
    public byte[] magicSintLe() { return magicSintLe; }
    public void setMagicSintLe(byte[] _v) { magicSintLe = _v; }
    public short sint16le() { return sint16le; }
    public void setSint16le(short _v) { sint16le = _v; }
    public int sint32le() { return sint32le; }
    public void setSint32le(int _v) { sint32le = _v; }
    public long sint64le() { return sint64le; }
    public void setSint64le(long _v) { sint64le = _v; }
    public byte[] magicUintBe() { return magicUintBe; }
    public void setMagicUintBe(byte[] _v) { magicUintBe = _v; }
    public int uint16be() { return uint16be; }
    public void setUint16be(int _v) { uint16be = _v; }
    public long uint32be() { return uint32be; }
    public void setUint32be(long _v) { uint32be = _v; }
    public long uint64be() { return uint64be; }
    public void setUint64be(long _v) { uint64be = _v; }
    public byte[] magicSintBe() { return magicSintBe; }
    public void setMagicSintBe(byte[] _v) { magicSintBe = _v; }
    public short sint16be() { return sint16be; }
    public void setSint16be(short _v) { sint16be = _v; }
    public int sint32be() { return sint32be; }
    public void setSint32be(int _v) { sint32be = _v; }
    public long sint64be() { return sint64be; }
    public void setSint64be(long _v) { sint64be = _v; }
    public Integers _root() { return _root; }
    public void set_root(Integers _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
