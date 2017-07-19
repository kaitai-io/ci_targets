// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EofExceptionU4 : KaitaiStruct
    {
        public static EofExceptionU4 FromFile(string fileName)
        {
            return new EofExceptionU4(new KaitaiStream(fileName));
        }

        public EofExceptionU4(KaitaiStream io, KaitaiStruct parent = null, EofExceptionU4 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _prebuf = m_io.ReadBytes(9);
            _failInt = m_io.ReadU4le();
            }
        private byte[] _prebuf;
        private uint _failInt;
        private EofExceptionU4 m_root;
        private KaitaiStruct m_parent;
        public byte[] Prebuf { get { return _prebuf; } }
        public uint FailInt { get { return _failInt; } }
        public EofExceptionU4 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
