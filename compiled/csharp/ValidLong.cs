// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidLong : KaitaiStruct
    {
        public static ValidLong FromFile(string fileName)
        {
            return new ValidLong(new KaitaiStream(fileName));
        }

        public ValidLong(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidLong p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _magic1 = m_io.ReadBytes(6);
            if (!((KaitaiStream.ByteArrayCompare(_magic1, new byte[] { 80, 65, 67, 75, 45, 49 }) == 0)))
            {
                throw new ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, _magic1, m_io, "/seq/0");
            }
            _uint8 = m_io.ReadU1();
            if (!(_uint8 == 255))
            {
                throw new ValidationNotEqualError(255, _uint8, m_io, "/seq/1");
            }
            _sint8 = m_io.ReadS1();
            if (!(_sint8 == -1))
            {
                throw new ValidationNotEqualError(-1, _sint8, m_io, "/seq/2");
            }
            _magicUint = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(10));
            if (!(_magicUint == "PACK-U-DEF"))
            {
                throw new ValidationNotEqualError("PACK-U-DEF", _magicUint, m_io, "/seq/3");
            }
            _uint16 = m_io.ReadU2le();
            if (!(_uint16 == 65535))
            {
                throw new ValidationNotEqualError(65535, _uint16, m_io, "/seq/4");
            }
            _uint32 = m_io.ReadU4le();
            if (!(_uint32 == 4294967295))
            {
                throw new ValidationNotEqualError(4294967295, _uint32, m_io, "/seq/5");
            }
            _uint64 = m_io.ReadU8le();
            if (!(_uint64 == 18446744073709551615))
            {
                throw new ValidationNotEqualError(18446744073709551615, _uint64, m_io, "/seq/6");
            }
            _magicSint = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(10));
            if (!(_magicSint == "PACK-S-DEF"))
            {
                throw new ValidationNotEqualError("PACK-S-DEF", _magicSint, m_io, "/seq/7");
            }
            _sint16 = m_io.ReadS2le();
            if (!(_sint16 == -1))
            {
                throw new ValidationNotEqualError(-1, _sint16, m_io, "/seq/8");
            }
            _sint32 = m_io.ReadS4le();
            if (!(_sint32 == -1))
            {
                throw new ValidationNotEqualError(-1, _sint32, m_io, "/seq/9");
            }
            _sint64 = m_io.ReadS8le();
            if (!(_sint64 == -1))
            {
                throw new ValidationNotEqualError(-1, _sint64, m_io, "/seq/10");
            }
        }
        private byte[] _magic1;
        private byte _uint8;
        private sbyte _sint8;
        private string _magicUint;
        private ushort _uint16;
        private uint _uint32;
        private ulong _uint64;
        private string _magicSint;
        private short _sint16;
        private int _sint32;
        private long _sint64;
        private ValidLong m_root;
        private KaitaiStruct m_parent;
        public byte[] Magic1 { get { return _magic1; } }
        public byte Uint8 { get { return _uint8; } }
        public sbyte Sint8 { get { return _sint8; } }
        public string MagicUint { get { return _magicUint; } }
        public ushort Uint16 { get { return _uint16; } }
        public uint Uint32 { get { return _uint32; } }
        public ulong Uint64 { get { return _uint64; } }
        public string MagicSint { get { return _magicSint; } }
        public short Sint16 { get { return _sint16; } }
        public int Sint32 { get { return _sint32; } }
        public long Sint64 { get { return _sint64; } }
        public ValidLong M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
