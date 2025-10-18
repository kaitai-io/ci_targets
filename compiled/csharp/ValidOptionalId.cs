// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidOptionalId : KaitaiStruct
    {
        public static ValidOptionalId FromFile(string fileName)
        {
            return new ValidOptionalId(new KaitaiStream(fileName));
        }

        public ValidOptionalId(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidOptionalId p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __unnamed0 = m_io.ReadBytes(6);
            if (!((KaitaiStream.ByteArrayCompare(__unnamed0, new byte[] { 80, 65, 67, 75, 45, 49 }) == 0)))
            {
                throw new ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, __unnamed0, m_io, "/seq/0");
            }
            __unnamed1 = m_io.ReadU1();
            if (!(__unnamed1 == 255))
            {
                throw new ValidationNotEqualError(255, __unnamed1, m_io, "/seq/1");
            }
            __unnamed2 = m_io.ReadS1();
            {
                sbyte M_ = __unnamed2;
                if (!(M_ == -1))
                {
                    throw new ValidationExprError(__unnamed2, m_io, "/seq/2");
                }
            }
        }
        public byte[] Unnamed_0 { get { return __unnamed0; } }
        public byte Unnamed_1 { get { return __unnamed1; } }
        public sbyte Unnamed_2 { get { return __unnamed2; } }
        public ValidOptionalId M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte[] __unnamed0;
        private byte __unnamed1;
        private sbyte __unnamed2;
        private ValidOptionalId m_root;
        private KaitaiStruct m_parent;
    }
}
