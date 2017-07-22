// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class OptionalId : KaitaiStruct
    {
        public static OptionalId FromFile(string fileName)
        {
            return new OptionalId(new KaitaiStream(fileName));
        }

        public OptionalId(KaitaiStream io, KaitaiStruct parent = null, OptionalId root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            __unnamed0 = m_io.ReadU1();
            __unnamed1 = m_io.ReadU1();
            __unnamed2 = m_io.ReadBytes(5);
        }
        private byte __unnamed0;
        private byte __unnamed1;
        private byte[] __unnamed2;
        private OptionalId m_root;
        private KaitaiStruct m_parent;
        public byte Unnamed_0 { get { return __unnamed0; } }
        public byte Unnamed_1 { get { return __unnamed1; } }
        public byte[] Unnamed_2 { get { return __unnamed2; } }
        public OptionalId M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
