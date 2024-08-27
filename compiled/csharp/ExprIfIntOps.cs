// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprIfIntOps : KaitaiStruct
    {
        public static ExprIfIntOps FromFile(string fileName)
        {
            return new ExprIfIntOps(new KaitaiStream(fileName));
        }

        public ExprIfIntOps(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprIfIntOps p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_isEqBoxed = false;
            f_isEqPrim = false;
            _read();
        }
        private void _read()
        {
            _skip = m_io.ReadBytes(2);
            if (true) {
                _it = m_io.ReadS2le();
            }
            if (true) {
                _boxed = m_io.ReadS2le();
            }
        }
        private bool f_isEqBoxed;
        private bool _isEqBoxed;
        public bool IsEqBoxed
        {
            get
            {
                if (f_isEqBoxed)
                    return _isEqBoxed;
                f_isEqBoxed = true;
                _isEqBoxed = (bool) (It == Boxed);
                return _isEqBoxed;
            }
        }
        private bool f_isEqPrim;
        private bool _isEqPrim;
        public bool IsEqPrim
        {
            get
            {
                if (f_isEqPrim)
                    return _isEqPrim;
                f_isEqPrim = true;
                _isEqPrim = (bool) (It == 16705);
                return _isEqPrim;
            }
        }
        private byte[] _skip;
        private short? _it;
        private short? _boxed;
        private ExprIfIntOps m_root;
        private KaitaiStruct m_parent;
        public byte[] Skip { get { return _skip; } }
        public short? It { get { return _it; } }
        public short? Boxed { get { return _boxed; } }
        public ExprIfIntOps M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
