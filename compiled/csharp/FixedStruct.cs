// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class FixedStruct : KaitaiStruct
    {
        public static FixedStruct FromFile(string fileName)
        {
            return new FixedStruct(new KaitaiStream(fileName));
        }

        public FixedStruct(KaitaiStream p__io, KaitaiStruct p__parent = null, FixedStruct p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_hdr = false;
            _read();
        }
        private void _read()
        {
        }
        public partial class Header : KaitaiStruct
        {
            public static Header FromFile(string fileName)
            {
                return new Header(new KaitaiStream(fileName));
            }

            public Header(KaitaiStream p__io, FixedStruct p__parent = null, FixedStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _magic1 = m_io.ReadBytes(6);
                if (!((KaitaiStream.ByteArrayCompare(_magic1, new byte[] { 80, 65, 67, 75, 45, 49 }) == 0)))
                {
                    throw new ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, _magic1, m_io, "/types/header/seq/0");
                }
                _uint8 = m_io.ReadU1();
                _sint8 = m_io.ReadS1();
                _magicUint = m_io.ReadBytes(10);
                if (!((KaitaiStream.ByteArrayCompare(_magicUint, new byte[] { 80, 65, 67, 75, 45, 85, 45, 68, 69, 70 }) == 0)))
                {
                    throw new ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 85, 45, 68, 69, 70 }, _magicUint, m_io, "/types/header/seq/3");
                }
                _uint16 = m_io.ReadU2le();
                _uint32 = m_io.ReadU4le();
                _uint64 = m_io.ReadU8le();
                _magicSint = m_io.ReadBytes(10);
                if (!((KaitaiStream.ByteArrayCompare(_magicSint, new byte[] { 80, 65, 67, 75, 45, 83, 45, 68, 69, 70 }) == 0)))
                {
                    throw new ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 83, 45, 68, 69, 70 }, _magicSint, m_io, "/types/header/seq/7");
                }
                _sint16 = m_io.ReadS2le();
                _sint32 = m_io.ReadS4le();
                _sint64 = m_io.ReadS8le();
                _magicUintLe = m_io.ReadBytes(9);
                if (!((KaitaiStream.ByteArrayCompare(_magicUintLe, new byte[] { 80, 65, 67, 75, 45, 85, 45, 76, 69 }) == 0)))
                {
                    throw new ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 85, 45, 76, 69 }, _magicUintLe, m_io, "/types/header/seq/11");
                }
                _uint16le = m_io.ReadU2le();
                _uint32le = m_io.ReadU4le();
                _uint64le = m_io.ReadU8le();
                _magicSintLe = m_io.ReadBytes(9);
                if (!((KaitaiStream.ByteArrayCompare(_magicSintLe, new byte[] { 80, 65, 67, 75, 45, 83, 45, 76, 69 }) == 0)))
                {
                    throw new ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 83, 45, 76, 69 }, _magicSintLe, m_io, "/types/header/seq/15");
                }
                _sint16le = m_io.ReadS2le();
                _sint32le = m_io.ReadS4le();
                _sint64le = m_io.ReadS8le();
                _magicUintBe = m_io.ReadBytes(9);
                if (!((KaitaiStream.ByteArrayCompare(_magicUintBe, new byte[] { 80, 65, 67, 75, 45, 85, 45, 66, 69 }) == 0)))
                {
                    throw new ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 85, 45, 66, 69 }, _magicUintBe, m_io, "/types/header/seq/19");
                }
                _uint16be = m_io.ReadU2be();
                _uint32be = m_io.ReadU4be();
                _uint64be = m_io.ReadU8be();
                _magicSintBe = m_io.ReadBytes(9);
                if (!((KaitaiStream.ByteArrayCompare(_magicSintBe, new byte[] { 80, 65, 67, 75, 45, 83, 45, 66, 69 }) == 0)))
                {
                    throw new ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 83, 45, 66, 69 }, _magicSintBe, m_io, "/types/header/seq/23");
                }
                _sint16be = m_io.ReadS2be();
                _sint32be = m_io.ReadS4be();
                _sint64be = m_io.ReadS8be();
            }
            public byte[] Magic1 { get { return _magic1; } }
            public byte Uint8 { get { return _uint8; } }
            public sbyte Sint8 { get { return _sint8; } }
            public byte[] MagicUint { get { return _magicUint; } }
            public ushort Uint16 { get { return _uint16; } }
            public uint Uint32 { get { return _uint32; } }
            public ulong Uint64 { get { return _uint64; } }
            public byte[] MagicSint { get { return _magicSint; } }
            public short Sint16 { get { return _sint16; } }
            public int Sint32 { get { return _sint32; } }
            public long Sint64 { get { return _sint64; } }
            public byte[] MagicUintLe { get { return _magicUintLe; } }
            public ushort Uint16le { get { return _uint16le; } }
            public uint Uint32le { get { return _uint32le; } }
            public ulong Uint64le { get { return _uint64le; } }
            public byte[] MagicSintLe { get { return _magicSintLe; } }
            public short Sint16le { get { return _sint16le; } }
            public int Sint32le { get { return _sint32le; } }
            public long Sint64le { get { return _sint64le; } }
            public byte[] MagicUintBe { get { return _magicUintBe; } }
            public ushort Uint16be { get { return _uint16be; } }
            public uint Uint32be { get { return _uint32be; } }
            public ulong Uint64be { get { return _uint64be; } }
            public byte[] MagicSintBe { get { return _magicSintBe; } }
            public short Sint16be { get { return _sint16be; } }
            public int Sint32be { get { return _sint32be; } }
            public long Sint64be { get { return _sint64be; } }
            public FixedStruct M_Root { get { return m_root; } }
            public FixedStruct M_Parent { get { return m_parent; } }
            private byte[] _magic1;
            private byte _uint8;
            private sbyte _sint8;
            private byte[] _magicUint;
            private ushort _uint16;
            private uint _uint32;
            private ulong _uint64;
            private byte[] _magicSint;
            private short _sint16;
            private int _sint32;
            private long _sint64;
            private byte[] _magicUintLe;
            private ushort _uint16le;
            private uint _uint32le;
            private ulong _uint64le;
            private byte[] _magicSintLe;
            private short _sint16le;
            private int _sint32le;
            private long _sint64le;
            private byte[] _magicUintBe;
            private ushort _uint16be;
            private uint _uint32be;
            private ulong _uint64be;
            private byte[] _magicSintBe;
            private short _sint16be;
            private int _sint32be;
            private long _sint64be;
            private FixedStruct m_root;
            private FixedStruct m_parent;
        }
        public Header Hdr
        {
            get
            {
                if (f_hdr)
                    return _hdr;
                f_hdr = true;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _hdr = new Header(m_io, this, m_root);
                m_io.Seek(_pos);
                return _hdr;
            }
        }
        public FixedStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_hdr;
        private Header _hdr;
        private FixedStruct m_root;
        private KaitaiStruct m_parent;
    }
}
