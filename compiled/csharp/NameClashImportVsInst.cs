// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NameClashImportVsInst : KaitaiStruct
    {
        public static NameClashImportVsInst FromFile(string fileName)
        {
            return new NameClashImportVsInst(new KaitaiStream(fileName));
        }

        public NameClashImportVsInst(KaitaiStream p__io, KaitaiStruct p__parent = null, NameClashImportVsInst p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_integers = false;
            f_std = false;
            _read();
        }
        private void _read()
        {
        }
        public Integers Integers
        {
            get
            {
                if (f_integers)
                    return _integers;
                f_integers = true;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _integers = new Integers(m_io);
                m_io.Seek(_pos);
                return _integers;
            }
        }
        public int Std
        {
            get
            {
                if (f_std)
                    return _std;
                f_std = true;
                _std = (int) (1 + 2);
                return _std;
            }
        }
        public NameClashImportVsInst M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_integers;
        private Integers _integers;
        private bool f_std;
        private int _std;
        private NameClashImportVsInst m_root;
        private KaitaiStruct m_parent;
    }
}
