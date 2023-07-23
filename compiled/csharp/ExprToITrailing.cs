// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;

namespace Kaitai
{
    public partial class ExprToITrailing : KaitaiStruct
    {
        public static ExprToITrailing FromFile(string fileName)
        {
            return new ExprToITrailing(new KaitaiStream(fileName));
        }

        public ExprToITrailing(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprToITrailing p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_toIR10 = false;
            f_toIR13 = false;
            f_toIGarbage = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_toIR10;
        private int _toIR10;
        public int ToIR10
        {
            get
            {
                if (f_toIR10)
                    return _toIR10;
                _toIR10 = (int) (Convert.ToInt64("9173abc", 10));
                f_toIR10 = true;
                return _toIR10;
            }
        }
        private bool f_toIR13;
        private int _toIR13;
        public int ToIR13
        {
            get
            {
                if (f_toIR13)
                    return _toIR13;
                _toIR13 = (int) (Convert.ToInt64("9173abc", 13));
                f_toIR13 = true;
                return _toIR13;
            }
        }
        private bool f_toIGarbage;
        private int _toIGarbage;
        public int ToIGarbage
        {
            get
            {
                if (f_toIGarbage)
                    return _toIGarbage;
                _toIGarbage = (int) (Convert.ToInt64("123_.^", 10));
                f_toIGarbage = true;
                return _toIGarbage;
            }
        }
        private ExprToITrailing m_root;
        private KaitaiStruct m_parent;
        public ExprToITrailing M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
