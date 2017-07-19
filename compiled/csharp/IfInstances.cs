// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class IfInstances : KaitaiStruct
    {
        public static IfInstances FromFile(string fileName)
        {
            return new IfInstances(new KaitaiStream(fileName));
        }

        public IfInstances(KaitaiStream io, KaitaiStruct parent = null, IfInstances root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_neverHappens = false;
            _read();
        }
        private void _read() {
            }
        private bool f_neverHappens;
        private byte _neverHappens;
        public byte NeverHappens
        {
            get
            {
                if (f_neverHappens)
                    return _neverHappens;
                if (false) {
                    long _pos = m_io.Pos;
                    m_io.Seek(100500);
                    _neverHappens = m_io.ReadU1();
                    m_io.Seek(_pos);
                }
                f_neverHappens = true;
                return _neverHappens;
            }
        }
        private IfInstances m_root;
        private KaitaiStruct m_parent;
        public IfInstances M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
